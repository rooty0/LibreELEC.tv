# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-nestopia"
PKG_VERSION="cce1f5b"
PKG_SHA256="f446ee65951ec6929a0560df0d843c97a1c18db1b9d0e0012ddfa93a6363613b"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/nestopia"
PKG_URL="https://github.com/libretro/nestopia/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="nestopia-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain kodi-platform"
PKG_SECTION="emulation"
PKG_SHORTDESC="game.libretro.nestopia: Nestopia for Kodi"
PKG_LONGDESC="game.libretro.nestopia: Nestopia for Kodi"
PKG_TOOLCHAIN="manual"

PKG_LIBNAME="nestopia_libretro.so"
PKG_LIBPATH="libretro/$PKG_LIBNAME"
PKG_LIBVAR="NESTOPIA_LIB"

post_unpack() {
  rm $PKG_BUILD/configure.ac
}

make_target() {

  if [ "$PROJECT" == "RPi" ]; then
    make -C libretro platform=rpi2
  else
    make -C libretro
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
