# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-mrboom"
PKG_VERSION="4.5"
PKG_SHA256="3f1c94a9e25b0f7cc3be021513b15ab73580965317671ac413ef9442442ce84e"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/libretro/mrboom-libretro"
PKG_URL="https://github.com/libretro/mrboom-libretro/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="mrboom-libretro-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain kodi-platform"
PKG_SECTION="emulation"
PKG_SHORTDESC="game.libretro.mrboom: mrboom for Kodi"
PKG_LONGDESC="game.libretro.mrboom: mrboom for Kodi"

PKG_LIBNAME="mrboom_libretro.so"
PKG_LIBPATH="$PKG_LIBNAME"
PKG_LIBVAR="MRBOOM_LIB"

make_target() {
  make
}

makeinstall_target() {
  if [ ! "$OEM_EMU" = "no" ]; then
    #create Retroarch Playlist
    mkdir -p $INSTALL/usr/config
    mkdir -p $INSTALL/usr/config/retroarch
    mkdir -p $INSTALL/usr/config/retroarch/playlists
    cp $PKG_DIR/files/* $INSTALL/usr/config/retroarch/playlists

    mkdir -p $INSTALL/usr/lib/libretro
    cp $PKG_LIBPATH $INSTALL/usr/lib/libretro/
  fi

  mkdir -p $SYSROOT_PREFIX/usr/lib/cmake/$PKG_NAME
  cp $PKG_LIBPATH $SYSROOT_PREFIX/usr/lib/$PKG_LIBNAME
  echo "set($PKG_LIBVAR $SYSROOT_PREFIX/usr/lib/$PKG_LIBNAME)" > $SYSROOT_PREFIX/usr/lib/cmake/$PKG_NAME/$PKG_NAME-config.cmake
}
