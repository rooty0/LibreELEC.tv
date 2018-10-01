# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-mame2010"
PKG_VERSION="70732f9"
PKG_SHA256="36ab11541233c9a4240baf6f0a529d8d335dce23f25b66b950e18373fd8e65fb"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/mame2010-libretro"
PKG_URL="https://github.com/libretro/mame2010-libretro/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Late 2010 version of MAME (0.139) for libretro"

PKG_LIBNAME="mame2010_libretro.so"
PKG_LIBPATH="$PKG_LIBNAME"
PKG_LIBVAR="MAME2010_LIB"

pre_make_target() {
  export CFLAGS="$CFLAGS -fpermissive"
  export CXXFLAGS="$CXXFLAGS -fpermissive"
  export LD="$CXX"
}

make_target() {
  case $TARGET_CPU in
    arm1176jzf-s)
      make platform=armv6-hardfloat-$TARGET_CPU GIT_VERSION=$PKG_VERSION
      ;;
    cortex-a7|cortex-a9)
      make platform=armv7-neon-hardfloat-$TARGET_CPU GIT_VERSION=$PKG_VERSION
      ;;
    *cortex-a53|cortex-a17)
      if [ "$TARGET_ARCH" = "aarch64" ]; then
        make platform=aarch64 GIT_VERSION=$PKG_VERSION
      else
        make platform=armv7-neon-hardfloat-cortex-a9 GIT_VERSION=$PKG_VERSION
      fi
      ;;
    x86-64)
      make GIT_VERSION=$PKG_VERSION
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
