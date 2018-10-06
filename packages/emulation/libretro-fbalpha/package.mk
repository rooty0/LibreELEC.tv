# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-fbalpha"
PKG_VERSION="4b5c569"
PKG_SHA256="8f7a46dd93589cd28f8cb3c65fc927410c2f8b40bdcd0b633f596fedb1893498"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/libretro/fbalpha"
PKG_URL="https://github.com/libretro/fbalpha/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="fbalpha-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain kodi-platform"
PKG_SECTION="emulation"
PKG_SHORTDESC="game.libretro.fba: fba for Kodi"
PKG_LONGDESC="game.libretro.fba: fba for Kodi"
PKG_TOOLCHAIN="manual"

PKG_LIBNAME="fbalpha_libretro.so"
PKG_LIBPATH="$PKG_LIBNAME"
PKG_LIBVAR="FBALPHA_LIB"

make_target() {
  if [ "$PROJECT" == "Amlogic" ]; then
      make -f makefile.libretro CC=$CC CXX=$CXX GIT_VERSION=$PKG_VERSION
  fi

  if [ "$PROJECT" == "Generic" ]; then
      make -f makefile.libretro CC=$CC CXX=$CXX GIT_VERSION=$PKG_VERSION
  fi

  if [ "$PROJECT" == "RPi" ]; then
    case $DEVICE in
      RPi)
        make -f makefile.libretro platform=armv CC=$CC CXX=$CXX GIT_VERSION=$PKG_VERSION
        ;;
      RPi2)
      make -f makefile.libretro platform=rpi2 CC=$CC CXX=$CXX GIT_VERSION=$PKG_VERSION
        ;;
    esac
  fi
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
