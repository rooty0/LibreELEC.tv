# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-desmume"
PKG_VERSION="07162f4"
PKG_SHA256="4a95423264989ee57f783b395601e9131a2ede83f3911679538ddfc8c505c28a"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/desmume"
PKG_URL="https://github.com/libretro/desmume/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="desmume-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain kodi-platform"
PKG_SECTION="emulation"
PKG_SHORTDESC="libretro wrapper for desmume NDS emulator."
PKG_LONGDESC="libretro wrapper for desmume NDS emulator."
PKG_TOOLCHAIN="manual"

PKG_LIBNAME="desmume_libretro.so"
PKG_LIBPATH="desmume/src/frontend/libretro/$PKG_LIBNAME"
PKG_LIBVAR="DESMUME_LIB"

make_target() {
  case $TARGET_CPU in
    arm1176jzf-s)
      make -C desmume/src/frontend/libretro -f Makefile.libretro platform=armv6-hardfloat-$TARGET_CPU
      ;;
    cortex-a7|cortex-a9)
      make -C desmume/src/frontend/libretro -f Makefile.libretro platform=armv7-neon-hardfloat-$TARGET_CPU
      ;;
    x86-64)
      make -C desmume/src/frontend/libretro -f Makefile.libretro
      ;;
  esac
}

makeinstall_target() {
  if [ ! "$OEM_EMU" = "no" ]; then
    mkdir -p $INSTALL/usr/lib/libretro
    cp $PKG_LIBPATH $INSTALL/usr/lib/libretro/
  fi

  mkdir -p $SYSROOT_PREFIX/usr/lib/cmake/$PKG_NAME
  cp $PKG_LIBPATH $SYSROOT_PREFIX/usr/lib/$PKG_LIBNAME
  echo "set($PKG_LIBVAR $SYSROOT_PREFIX/usr/lib/$PKG_LIBNAME)" > $SYSROOT_PREFIX/usr/lib/cmake/$PKG_NAME/$PKG_NAME-config.cmake
}
