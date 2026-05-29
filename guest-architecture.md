# Guest architecture support in AQEMU

AQEMU support is currently based on a fixed list of `qemu-system-*` binaries (not dynamic discovery of every installed QEMU target).

`Supported` below means:
- AQEMU searches for the binary in `System_Info::Find_QEMU_Binary_Files`
- AQEMU has a matching device profile in `System_Info::Emulator_QEMU_2_0`

| QEMU binary | Supported in AQEMU | Native-host tag support* |
|---|---|---|
| `qemu-system-x86_64` | Yes | Yes |
| `qemu-system-i386` | Yes | Yes |
| `qemu-system-arm` | Yes | Yes |
| `qemu-system-aarch64` | Yes | Yes |
| `qemu-system-riscv32` | Yes | Yes |
| `qemu-system-riscv64` | Yes | Yes |
| `qemu-system-ppc` | Yes | Yes |
| `qemu-system-ppc64` | Yes | Yes |
| `qemu-system-ppcemb` | Yes | No |
| `qemu-system-sparc` | Yes | Yes |
| `qemu-system-sparc64` | Yes | Yes |
| `qemu-system-s390x` | Yes | Yes |
| `qemu-system-loongarch64` | Yes | Yes |
| `qemu-system-mips` | Yes | No |
| `qemu-system-mipsel` | Yes | No |
| `qemu-system-mips64` | Yes | No |
| `qemu-system-mips64el` | Yes | No |
| `qemu-system-microblaze` | Yes | No |
| `qemu-system-microblazeel` | Yes | No |
| `qemu-system-cris` | Yes | No |
| `qemu-system-m68k` | Yes | No |
| `qemu-system-sh4` | Yes | No |
| `qemu-system-sh4eb` | Yes | No |
| `qemu-system-alpha` | Yes | No |
| `qemu-system-avr` | Yes | No |
| `qemu-system-hppa` | Yes | No |
| `qemu-system-or1k` | Yes | No |
| `qemu-system-rx` | Yes | No |
| `qemu-system-tricore` | Yes | No |
| `qemu-system-xtensa` | Yes | No |
| `qemu-system-xtensaeb` | Yes | No |

\* `Native-host tag support` indicates whether AQEMU’s `Is_Native_Computer_Type` logic can mark the architecture as host-native on matching CPU architecture.
