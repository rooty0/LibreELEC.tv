# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mupen64plus"
PKG_VERSION="a1d60824eed693a71d247440df6e15d05b49a32e"
PKG_SHA256="1a4538a627185b66d5192e9b3cc8f28b3a8a32a67db38aa4ee56d12e4695a855"
PKG_REV="110"
# no openGL suport in retroplayer yet
PKG_ARCH="none"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/kodi-game/game.libretro.mupen64plus"
PKG_URL="https://github.com/kodi-game/game.libretro.mupen64plus/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libretro-mupen64plus"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mupen64plus: Mupen 64 Plus emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
