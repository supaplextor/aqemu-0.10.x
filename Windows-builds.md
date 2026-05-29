# Building AQEMU as a 64-bit Windows executable from Debian Trixie

Cross-compiling a Qt5 app to Windows 64-bit from Linux requires Qt5 built for
the MinGW-w64 target. Debian Trixie ships MinGW-w64 GCC but no pre-built Qt5
Windows libraries. Options are ranked below by effort.

---

## Option A: MXE (recommended — least friction)

[MXE](https://mxe.cc) provides MinGW-w64 + Qt5 + CMake, all pre-wired.

### 1. Install MXE build dependencies

```bash
sudo apt install autoconf automake autopoint bash bison bzip2 flex g++ \
  gawk gettext git gperf intltool jq libffi-dev libgdk-pixbuf-xlib-2.0-dev \
  libltdl-dev libssl-dev libtool-bin libxml-parser-perl lzip \
  make openssl p7zip-full patch perl python3 ruby sed unzip wget \
  xz-utils
```

> **Debian Trixie note:** `libgdk-pixbuf2.0-dev` was replaced by
> `libgdk-pixbuf-xlib-2.0-dev` in Trixie.

### 2. Clone MXE and build Qt5 + CMake for the Windows 64-bit target

```bash
git clone https://github.com/mxe/mxe.git ~/mxe
cd ~/mxe

# Takes ~1–2 hours on first run
make MXE_TARGETS=x86_64-w64-mingw32.static qtbase cmake
```

To also support 32-bit output, build the 32-bit toolchain as well:

```bash
cd ~/mxe

# Also takes ~1–2 hours on first run
make MXE_TARGETS=i686-w64-mingw32.static qtbase cmake
```

> Tip: if starting from scratch, you can build both targets in one run:
>
> ```bash
> make MXE_TARGETS='x86_64-w64-mingw32.static i686-w64-mingw32.static' qtbase cmake
> ```

### 3. Configure and build AQEMU

```bash
cd /path/to/aqemu

~/mxe/usr/bin/x86_64-w64-mingw32.static-cmake \
  -S . -B build-win64 \
  -DCMAKE_INSTALL_PREFIX=dist-win64 \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF

cmake --build build-win64 -j8
cmake --install build-win64
```

The output `dist-win64/bin/aqemu.exe` is a fully static binary — no DLLs required.

### 4. Configure and build AQEMU (32-bit Windows .exe)

```bash
cd /path/to/aqemu

~/mxe/usr/bin/i686-w64-mingw32.static-cmake \
  -S . -B build-win32 \
  -DCMAKE_INSTALL_PREFIX=dist-win32 \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF

cmake --build build-win32 -j8
cmake --install build-win32
```

The output `dist-win32/bin/aqemu.exe` is the 32-bit Windows executable.

---

## Option B: MSYS2 on Windows (native build, no cross-compilation)

If a Windows machine or VM is available this is the simplest path and avoids
all cross-compilation complexity.

In an **MSYS2 MINGW64** shell:

```powershell
pacman -S mingw-w64-x86_64-qt5-base mingw-w64-x86_64-cmake \
          mingw-w64-x86_64-gcc make

cmake -S . -B build -G "MinGW Makefiles" \
  -DCMAKE_INSTALL_PREFIX=dist \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF

cmake --build build -j8
cmake --install build
```

For 32-bit output on Windows, use an **MSYS2 MINGW32** shell and swap packages:

```powershell
pacman -S mingw-w64-i686-qt5-base mingw-w64-i686-cmake \
          mingw-w64-i686-gcc make

cmake -S . -B build32 -G "MinGW Makefiles" \
  -DCMAKE_INSTALL_PREFIX=dist32 \
  -DWITHOUT_EMBEDDED_DISPLAY=ON \
  -DINSTALL_MAN=OFF

cmake --build build32 -j8
cmake --install build32
```

---

## Option C: Debian mingw-w64 + manually built Qt5 (most work)

```bash
sudo apt install mingw-w64 cmake
```

Then build Qt5 from source against the mingw-w64 toolchain (~2–4 hours).
Only worth pursuing when tight control over Qt build flags is required and
MXE is not an option.

---

## Why `-G "MinGW Makefiles"` fails on Linux

That CMake generator is Windows-only — it drives `mingw32-make.exe`. On Linux
the equivalent is a CMake **toolchain file** that sets `CMAKE_C_COMPILER` /
`CMAKE_CXX_COMPILER` to `x86_64-w64-mingw32-gcc` (64-bit) or
`i686-w64-mingw32-gcc` (32-bit). MXE's wrapper scripts
(`x86_64-w64-mingw32.static-cmake` and `i686-w64-mingw32.static-cmake`)
provide this automatically.
