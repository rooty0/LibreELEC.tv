## LibreELEC 9.x RR
---
**Project threads**

*English*

* [LibreELEC 9.0 RR [ Emulationstation | Retroarch | DolphinQT | Moonlight | Chrome | Spotify | MakeMKV ]](https://forum.libreelec.tv/thread/12662-libreelec-9-0-reborn-remix-emulationstation-retroarch-dolphinqt-chrome-spotify-w/)

*German*

* [LibreELEC 9.0 RR [ Emulationstation | Retroarch | DolphinQT | Moonlight | Chrome | Spotify | MakeMKV ]](https://www.kodinerds.net/index.php/Thread/62933-LibreELEC-9-0-Reborn-Remix-Emulationstation-Retroarch-DolphinQT-Moonlight-Chrome/)

---
**Currently supported & unsupported devices**

*Supported:*

* Generic AMD & Intel systems with IGP and/or discrete AMD or Nvidia GPU
* Amlogic S905
* Khadas Vim
* Odroid C2
* Raspberry Pi 2B, 3B, 3B+

*Currently unsupported:*

* Rockchip based devices -> need a testing device first

---
**Basics**

* [LibreELEC 9.x-devel](https://github.com/LibreELEC/LibreELEC.tv) | 9.1
* [Kodi 18](https://github.com/xbmc/xbmc) - v18.1
* [Linux 5.0.4](https://www.kernel.org/) - generic x86-64 builds
* [Linux 3.14.29](https://www.kernel.org/) - Amlogic S905(X) builds
* [Linux 5.0.3](https://github.com/raspberrypi/linux) - RPi2 & RPi3 builds 
---
**Addons & tools for generic builds**

* [Google Chrome](https://www.google.de/chrome/index.html) - latest | autoupdate script
* [Spotify](https://www.spotify.com/nl/download/linux/) - latest | autoupdate script
---
**Minor features**

* Updated "51-these-are-not-joysticks.rules" udev rules for input devices
* Increased system partion size to 1024MB for new installations
---
**Updated video driver versions**

* [AMDGPU](https://cgit.freedesktop.org/xorg/driver/xf86-video-amdgpu/) - v19.0.1
* [ATI](https://cgit.freedesktop.org/xorg/driver/xf86-video-ati) - v19.0.1
* [Intel-video](https://cgit.freedesktop.org/xorg/driver/xf86-video-intel/) - git 6afed33
* [Intel](https://downloadcenter.intel.com/download/28087/Linux-Processor-Microcode-Data-File) - µcode 2018-08-07a
* [Mesa 3D](https://www.mesa3d.org/) - v19.0.0
* [Nvidia](https://www.nvidia.com/Download/driverResults.aspx/134859/en-us) - v418.56
* [Nvidia-legacy](https://www.nvidia.com/Download/driverResults.aspx/135161/en-us) - v340.107
---
**Updated daemons / backends**

* [GCC](https://gcc.gnu.org/gcc-8/changes.html) - v8.3
* [glibc](https://sourceware.org/glibc/wiki/Release/2.28) - v2.29
* [LLVM](https://llvm.org/) - v8.0.0
* [Vulkan-Loader](https://github.com/KhronosGroup/Vulkan-Loader) - v1.1.103
* [openssl](https://www.openssl.org/source/) - v1.1.1b
* [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) - 12.2
* [Samba](https://www.samba.org/samba/history/samba-4.9.1.html) - v4.9.5
* [SDL2](https://github.com/spurious/SDL-mirror) - git 678ba78 | v2.0.9-dev
* [systemd](https://github.com/systemd/systemd) - v239
* [Qt](https://wiki.qt.io/Qt_5.12_Release) - v5.12.0
* [Xorg-Server](https://cgit.freedesktop.org/xorg/xserver/log/) - v1.20.4
---
**Sysutils**

* [mesa-demos](https://cgit.freedesktop.org/mesa/demos/) - git 317f67f | 8.4.0
* [sdl-jstest](https://gitlab.com/sdl-jstest/sdl-jstest) - git 53b89cc2 | v0.2.1
* [spectre-meltdown-checker](https://github.com/speed47/spectre-meltdown-checker) - git c705afe | v0.40
* [Skyscraper by Lars Muldjord](https://github.com/muldjord/skyscraper/releases) - v3.1.4
* [vulkan-tools](https://github.com/KhronosGroup/Vulkan-Tools) -git 4951cdb | 1.1.102
---
**Emulator Frontends**

* [Emulationstation-Retropie](https://github.com/RetroPie/EmulationStation) - v2.8.2
* [Pegasus-Frontend](http://pegasus-frontend.org/) - Alpha 11
* [RetroArch](https://github.com/libretro/RetroArch) - v1.7.6
---
**Emulators included in all builds**

*  [dosbox-sdl2](https://github.com/duganchen/dosbox) - git 8f8d0c5 | DOS
*  [hatari](https://github.com/hatari/hatari) - git 7aca27d | v2.2.1 | Atari ST/STE/TT/Falcon
*  [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) - git 212eac63 | v2.4.7+ | NVIDIA GameStream client
*  [PPSSPP-SDL](https://github.com/hrydgard/ppsspp) - git 74d87fa | v1.7.5 | Sony PSP
*  [libretro-2048](https://github.com/libretro/libretro-2048) - git 8284300 | 2048
*  [libretro-atari800](https://github.com/libretro/libretro-atari800) - git b3931bb | Atari 5200
*  [libretro-beetle-pce-fast](https://github.com/libretro/beetle-pce-fast-libretro) - git  7f6f061 | PC-Engine
*  [libretro-beetle-wswan](https://github.com/libretro/beetle-wswan-libretro) - git b4dc85b | Bandai WonderSwan
*  [libretro-blueMSX](https://github.com/libretro/blueMSX-libretro) - git 4be0a24 | MSX
*  [libretro-chailove](https://github.com/libretro/libretro-chailove) - v0.31.0 | 2D Game Framework with ChaiScript
*  [libretro-desmume](https://github.com/libretro/desmume) - git 3101540 | Nintendo DS
*  [libretro-dosbox](https://github.com/libretro/dosbox-libretro) - git 8f2d731 | DOS
*  [libretro-fbalpha](https://github.com/libretro/fbalpha) - git 6386c61 | Multiple Arcade Machine Emulator
*  [libretro-fceumm](https://github.com/libretro/libretro-fceumm) - git 80664f9 | Nintendo Entertainment System
*  [libretro-fuse](https://github.com/libretro/fuse-libretro) - git 69a4442 | ZX Spectrum
*  [libretro-gambatte](https://github.com/libretro/gambatte-libretro) - git a307317 | Nintendo Game Boy (Color)
*  [libretro-genplus](https://github.com/libretro/Genesis-Plus-GX) - git 53e043d | Sega Mega Drive
*  [libretro-mame2003-plus](https://github.com/libretro/mame2003-plus-libretro) - git a87734c | Romset 0.78 | Multiple Arcade Machine Emulator
*  [libretro-mgba](https://github.com/mgba-emu/mgba) - git 16688a5 | 0.7.1+ | Nintendo Game Boy Advance
*  [libretro-mrboom](https://github.com/libretro/mrboom-libretro) - git 7f18b80a | v4.7+ | Bomberman clone
*  [libretro-mupen64plus](https://github.com/libretro/mupen64plus-libretro) - git 501d298 | Nintendo N64
*  [libretro-mupen64plus-nx](https://github.com/libretro/mupen64plus-libretro-nx) - git 504ec2c | Nintendo N64
*  [libretro-nestopia](https://github.com/libretro/nestopia) - git a12b967 | Nintendo Entertainment System
*  [libretro-pcsx-rearmed](https://github.com/libretro/pcsx_rearmed) - git c8e850f | Sony Playstation
*  [libretro-prboom](https://github.com/libretro/libretro-prboom) - git e4acded | Doom Clone
*  [libretro-reicast](https://github.com/libretro/reicast-emulator) - git 2abb342 | Sega Dreamcast
*  [libretro-scummvm](https://github.com/libretro/scummvm) - git d6fb141 | Engine for LucasArts adventure games
*  [libretro-snes9x](https://github.com/libretro/snes9x) - git 8652f54 | Nintendo Super Nintendo Entertainment System
*  [libretro-stella](https://github.com/libretro/stella-libretro) - git 3ed8154 | Atari 2600
*  [libretro-tyrquake](https://github.com/libretro/tyrquake) - git 7d18c40 | Quake Clone
---
**Emulators included in generic x86-64 builds**

*  [citra](https://github.com/citra-emu/citra) - git b326147 | QT GUI | Nintendo 3DS
*  [Dolphin](https://de.dolphin-emu.org/?cr=de) - r5.0-9806 | [Qt GUI](https://de.dolphin-emu.org/blog/2018/02/03/dolphin-progress-report-january-2018/) | Nintendo Wii / Gamecube
*  [fs-uae](https://fs-uae.net/) - git 3d6a8dc | 2.9.7dev4 | Commodore Amiga
*  [m64p](https://m64p.github.io/) - git bcbef77 | Nintendo N64
*  [PCSX2 ](https://github.com/PCSX2/pcsx2) - git 5b9e93c | v1.5.0-dev | Docker addon needed | Sony PlayStation 2
*  [Vice](http://vice-emu.sourceforge.net/index.html#vice) - v3.3-release | Commodore C64
*  [libretro-beetle-psx](https://github.com/libretro/beetle-psx-libretro) - git c20eac9 | Sony Playstation
*  [libretro-beetle-saturn](https://github.com/libretro/beetle-saturn-libretro) - git 052f6d6 | Sega Saturn
*  [libretro-bsnes-mercury](https://github.com/libretro/bsnes-mercury) git 4e221df | balanced & accuracy | Nintendo Super Nintendo Entertainment System
*  [libretro-citra](https://github.com/libretro/citra) - git a0c222c | Nintendo 3DS
*  [libretro-dolphin](https://github.com/libretro/dolphin) - git 6fc5941 | Nintendo Wii / Gamecube
*  [libretro-kronos](https://github.com/FCare/Kronos) - git 97f8a78 | Sega Saturn
*  [libretro-mame2016](https://github.com/libretro/mame2016-libretro) - git e06d731 | Romset 0.174 | Multiple Arcade Machine Emulator
*  [libretro-mesen](https://github.com/SourMesen/Mesen) - git f2af2ba | v0.9.7 | Nintendo Entertainment System
*  [libretro-parallel-n64](https://github.com/libretro/parallel-n64) - git 7e204b0 | Nintendo N64
*  [libretro-ppsspp](https://github.com/hrydgard/ppsspp) - git 74d87fa | v1.7.5 | Sony PSP
---
**Emulators included in Amlogic S905 | Khadas Vim | Odroid C2 builds**

*  [amiberry](https://github.com/midwan/amiberry) - git b61d776 | v2.25+ | Commodore Amiga
*  [libretro-mame2010](https://github.com/libretro/mame2010-libretro) - git c87309d | Romset 0.139 | Multiple Arcade Machine Emulator
*  [libretro-snes9x2010](https://github.com/libretro/snes9x2010) - git d857a31 | Nintendo Super Nintendo Entertainment System
*  [libretro-vice](https://github.com/libretro/vice-libretro) - git b35a177 | Commodore C64
*  [libretro-yabause](https://github.com/libretro/yabause)  - git aa15301 | Sega Saturn
---
**Emulators included in RPi2 & RPi3 builds**

*  [amiberry](https://github.com/midwan/amiberry) - git b61d776 | v2.25+ | Commodore Amiga
*  [libretro-mame2010](https://github.com/libretro/mame2010-libretro) - git c87309d | Romset 0.139 | Multiple Arcade Machine Emulator
*  [libretro-snes9x2010](https://github.com/libretro/snes9x2010) - git d857a31 | Nintendo Super Nintendo Entertainment System
*  [libretro-vice](https://github.com/libretro/vice-libretro) - git b35a177 | Commodore C64
*  [libretro-yabause](https://github.com/libretro/yabause)  - git aa15301 | Sega Saturn

---
**Builds systems**

I uses VirtualBox v6.0.4 to run a Linux Mint 19 Mate VM as building system and a Thinkpad X220 with Linux Mint 19.1 as well. So this distribution should be suitable for you too. For further information see [LibreELEC Wiki / Compile](https://wiki.libreelec.tv/compile).

---
**Build dependencies**

This should be handled automatically by the build script.

---
**Download package source code (optional)**

This command starts the download of all the source code packages you'll need for the build process. You can skip this and the source code is downloaded right before each package is build.

For generic x86-64 Intel & AMD CPU use:
```
PROJECT=Generic ARCH=x86_64 tools/download-tool
```
For Raspberry Pi (RPi2 & RPi3) use:
```
PROJECT=RPi DEVICE=RPi2 ARCH=arm tools/download-tool
```
---

---
**Dashboard (optional)**

This command starts a dashboard that gives you a brief overview which package is currently unpacked, build, installed etc.

For generic x86-64 Intel & AMD CPU use:
```
PROJECT=Generic ARCH=x86_64 tools/dashboard
```
For Raspberry Pi (RPi2 & RPi3) use:
```
PROJECT=RPi DEVICE=RPi2 ARCH=arm tools/dashboard
```
---

**Build commands**

For generic x86-64 Intel & AMD CPU use:
```
PROJECT=Generic ARCH=x86_64 BUILD_PERIODIC=RR BUILDER_NAME=5schatten BUILDER_VERSION=9.1 make image
```
For Raspberry Pi (RPi2 & RPi3) use:
```
PROJECT=RPi DEVICE=RPi2 ARCH=arm BUILD_PERIODIC=RR BUILDER_NAME=5schatten BUILDER_VERSION=9.1 make image
```
For Amlogic S905 use:
```
PROJECT=Amlogic_Legacy DEVICE=S905 ARCH=arm BUILD_PERIODIC=RR BUILDER_NAME=5schatten BUILDER_VERSION=9.1 make image
```
For Khadas VIM use:
```
PROJECT=Amlogic_Legacy DEVICE=KVIM ARCH=arm BUILD_PERIODIC=RR BUILDER_NAME=5schatten BUILDER_VERSION=9.1 make image
```
For Odroid C2 use:
```
PROJECT=Amlogic_Legacy DEVICE=Odroid_C2 ARCH=arm BUILD_PERIODIC=RR BUILDER_NAME=5schatten BUILDER_VERSION=9.1 make image
```
To build single packages use:
```
scripts/build "package"
```
In example for package linux:
```
PROJECT=Generic ARCH=x86_64 scripts/build linux
```
---

**Clean up**

In case the build process fails try this and build again:

```
scripts/clean "package"
```
i.e. this cleans the linux package:
```
PROJECT=Generic ARCH=x86_64 scripts/clean linux
```

If you want to start a clean build:

```
make clean
```
If you want to start a clean build without buildcache:

```
make distclean
```
---
**Issues**

Visit the [LibreELEC 9 Remix issue page](https://github.com/5schatten/LibreELEC.tv/issues) or [LibreELEC 9.0 Reborn Remix [Emulationstation|Retroarch|DolphinQT |Chrome|Spotify]](https://forum.libreelec.tv/thread/12662-libreelec-9-0-reborn-remix-emulationstation-retroarch-dolphinqt-chrome-spotify-w/)  for issues pertaining to this specific fork. 

For everything else, see the [LibreELEC Forum](https://forum.libreelec.tv).

---
**Original README below:**

---
**LibreELEC**

LibreELEC is a 'Just enough OS' Linux distribution for running the award-winning [Kodi](https://kodi.tv) software on popular mediacentre hardware. LibreELEC is a conservative fork of the popular [OpenELEC](http://openelec.tv) project with a stronger focus on pre-release testing and post-release change management. Further information on the project can be found on the [LibreELEC website](https://libreelec.tv).

**Issues & Support**

Please report issues via the [LibreELEC forum: Bug Reports](https://forum.libreelec.tv/forum-35.html). Please ask support questions in the [LibreELEC forum: Help & Support](https://forum.libreelec.tv/forum-3.html) or ask a member of project staff in the #libreelec IRC channel on Freenode.

**Donations**

Contributions towards current project funding goals can be sent via PayPal to donations@libreelec.tv

**License**

LibreELEC original code is released under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html).

**Copyright**

As LibreELEC includes code from many upstream projects it includes many copyright owners. LibreELEC makes NO claim of copyright on any upstream code. However all original LibreELEC authored code is copyright LibreELEC.tv. Patches to upstream code have the same license as the upstream project, unless specified otherwise. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the LibreELEC project (in any form) is licensed under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html) and copyright is donated to LibreELEC.tv. This approach allows the project to stay manageable in the long term by giving us freedom to maintain the code as part of the whole without the management overhead of preserving contact with every submitter, e.g. GPLv3. You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.
