# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 0riginally created by Escalade (https://github.com/escalade)
# Copyright (C) 2018-present 5schatten (https://github.com/5schatten)

PKG_NAME="dolphin"
PKG_VERSION="406159f7f039f9d06dc10a47061c853f9fddb583"
PKG_SHA256="8f6840b2da237a84fb00b03451d36fd7a3a750d0b61821dff754780a70c35d32"
PKG_ARCH="x86_64"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/dolphin-emu/dolphin"
PKG_URL="https://github.com/dolphin-emu/dolphin/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain cmake:host openal-soft libevdev gtk+ ffmpeg zlib bluez pulseaudio alsa-lib libogg libvorbis libSM enet qt-everywhere vulkan-loader"
PKG_SECTION="emulation"
PKG_SHORTDESC="Dolphin GameCube/Wii emulator"
PKG_TOOLCHAIN="cmake-make"
PKG_BUILD_FLAGS="-gold"

PKG_CMAKE_OPTS_TARGET="-DENABLE_LTO=off \
                       -DUSE_SHARED_ENET=on \
                       -DENABLE_ANALYTICS=off"

pre_make_target() {
  #fix stdlib.h error
  find . -name flags.make -exec sed -i "s:isystem :I:g" \{} \;
  
  #export QT path
  export Qt5Gui_DIR=$SYSROOT_PREFIX/usr/lib

  #ugly version hack
  PKG_DOLPHIN_RELEASE="5.0-8806"
  PKG_DOLPHIN_BRANCH="Master"
  printf "#define SCM_REV_STR \""$PKG_VERSION"\"\n""#define SCM_DESC_STR \""$PKG_DOLPHIN_RELEASE"\"\n""#define SCM_BRANCH_STR \""$PKG_DOLPHIN_BRANCH"\"\n""#define SCM_IS_MASTER 0\n""#define SCM_DISTRIBUTOR_STR \"None\"\n""#define SCM_UPDATE_TRACK_STR \"\"\n" > Source/Core/Common/scmrev.h
}

post_makeinstall_target() {
  #copy scripts & config files
  cp $PKG_DIR/scripts/* $INSTALL/usr/bin/
  mkdir -p $INSTALL/usr/config/dolphin-emu
  cp -PR $PKG_DIR/config/* $INSTALL/usr/config/dolphin-emu/

  #remove not neeeded binary
  rm $INSTALL/usr/bin/dolphin-emu-nogui
}
