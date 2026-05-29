# Building AQEMU on Linux

This file documents Linux build workflows for AQEMU using 16 parallel jobs where possible.

---

## Option A: Meson + Ninja (recommended)

Meson/Ninja is the recommended build system in this repository.

### 1. Install build dependencies (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install -y \
  meson ninja-build build-essential \
  qtbase5-dev libqt5svg5-dev libqt5x11extras5-dev \
  libx11-dev libxext-dev libxi-dev zlib1g-dev libglib2.0-dev
```

### 2. Configure

```bash
cd /path/to/aqemu
meson setup builddir
```

### 3. Build with 16 jobs

```bash
meson compile -C builddir -j16
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

## Option B: CMake + Make (legacy/compatible)

Use this if you need to match older AQEMU build instructions or existing CMake workflows.

### 1. Install dependencies (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install -y \
  cmake build-essential \
  qtbase5-dev libqt5svg5-dev libqt5x11extras5-dev \
  libx11-dev libxext-dev libxi-dev zlib1g-dev libglib2.0-dev
```

### 2. Configure

```bash
cd /path/to/aqemu
cmake -S . -B .
```

You can add common options as needed, for example:

```bash
cmake -S . -B . \
  -DCMAKE_INSTALL_PREFIX=/usr/local \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF
```

### 3. Build with 16 jobs

```bash
cmake --build . -j16
```

### 4. Install with 16 jobs (when supported)

```bash
sudo cmake --install . -j16
```

If your CMake version does not support `--install -j`, use:

```bash
sudo make -j16 install
```

---

## Clean rebuild examples

Meson:

```bash
rm -rf builddir
meson setup builddir
meson compile -C builddir -j16
```

CMake in-source (this repository currently supports it):

```bash
rm -rf CMakeCache.txt CMakeFiles
cmake -S . -B .
cmake --build . -j16
```
