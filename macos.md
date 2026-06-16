# Building AQEMU on macOS

This file documents macOS build workflows for AQEMU using [Homebrew](https://brew.sh) to supply dependencies.

---

## Prerequisites

Install Homebrew if not already present:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Xcode Command Line Tools (required for the C++ compiler):

```bash
xcode-select --install
```

## Intel and Apple Silicon Macs

The commands in this document work for both Intel (`x86_64`) and Apple Silicon
(`arm64`) Macs when building AQEMU natively on the same machine architecture.
Homebrew chooses different default prefixes on each platform, but the use of
`brew --prefix` in the examples keeps the commands portable.

- Intel Homebrew prefix: `/usr/local`
- Apple Silicon Homebrew prefix: `/opt/homebrew`

If you specifically need an Intel build on an Apple Silicon Mac, use a Rosetta
shell together with an `x86_64` Homebrew installation so that Qt 5 and the rest
of the dependencies are installed for the Intel target as well.

---

## Option A: Meson + Ninja (recommended)

### 1. Install build dependencies

```bash
brew install meson ninja qt@5 libvncserver pkg-config
```

Make Qt 5 visible to pkg-config and the build tools:

```bash
export PATH="$(brew --prefix qt@5)/bin:$PATH"
export PKG_CONFIG_PATH="$(brew --prefix qt@5)/lib/pkgconfig:$(brew --prefix libvncserver)/lib/pkgconfig:$PKG_CONFIG_PATH"
```

### 2. Configure

```bash
cd /path/to/aqemu
meson setup builddir
```

### 3. Build

```bash
meson compile -C builddir
```

### 4. Run locally

```bash
./builddir/aqemu
```

### 5. Install (optional)

```bash
sudo meson install -C builddir
```

---

## Option B: CMake + Make (alternative)

### 1. Install build dependencies

```bash
brew install cmake qt@5 libvncserver pkg-config
```

Make Qt 5 visible to CMake:

```bash
export PATH="$(brew --prefix qt@5)/bin:$PATH"
export CMAKE_PREFIX_PATH="$(brew --prefix qt@5):$(brew --prefix libvncserver)"
```

### 2. Configure

```bash
cd /path/to/aqemu
cmake -S . -B build \
  -DCMAKE_PREFIX_PATH="$(brew --prefix qt@5);$(brew --prefix libvncserver)" \
  -DWITHOUT_EMBEDDED_DISPLAY=OFF \
  -DINSTALL_MAN=OFF \
  -DCMAKE_INSTALL_PREFIX=/usr/local
```

To skip the embedded VNC display (simplifies the build):

```bash
cmake -S . -B build \
  -DCMAKE_PREFIX_PATH="$(brew --prefix qt@5)" \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF \
  -DCMAKE_INSTALL_PREFIX=/usr/local
```

### 3. Build

```bash
cmake --build build -j$(sysctl -n hw.logicalcpu)
```

### 4. Run locally

```bash
./build/aqemu
```

### 5. Install (optional)

```bash
sudo cmake --install build
```

---

## Clean rebuild examples

Meson:

```bash
rm -rf builddir
meson setup builddir
meson compile -C builddir
```

CMake:

```bash
rm -rf build
cmake -S . -B build -DCMAKE_PREFIX_PATH="$(brew --prefix qt@5)" -DWITHOUT_EMBEDDED_DISPLAY=ON -DINSTALL_MAN=OFF
cmake --build build -j$(sysctl -n hw.logicalcpu)
```

---

## Notes

- AQEMU requires Qt 5. Homebrew installs Qt 5 as `qt@5` because Qt 6 is the default `qt` formula. The `PATH` and `CMAKE_PREFIX_PATH` exports above are necessary so that `meson`/`cmake` can locate the Qt 5 headers and libraries.
- `libvncserver` provides the `libvncclient` library used by the embedded VNC display. If you do not need the embedded display, pass `-DWITHOUT_EMBEDDED_DISPLAY=ON` to CMake (the Meson build currently always enables it).
- QEMU itself must be installed separately (e.g. `brew install qemu`) so that AQEMU can find and manage QEMU binaries.
