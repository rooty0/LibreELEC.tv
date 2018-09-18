# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="SDL2"
PKG_VERSION="7102712"
PKG_SHA256="9d80c2d7d62a10c6c419c83e29b10f9c16e2c27df7e35ad7cabe5f24b13cdd52"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://www.libsdl.org/"
PKG_URL="https://github.com/spurious/SDL-mirror/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="SDL-mirror-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain yasm:host alsa-lib systemd dbus"
PKG_SECTION="multimedia"
PKG_SHORTDESC="SDL2: A cross-platform Graphic API"
PKG_LONGDESC="Simple DirectMedia Layer is a cross-platform multimedia library designed to provide fast access to the graphics framebuffer and audio device. It is used by MPEG playback software, emulators, and many popular games, including the award winning Linux port of 'Civilization: Call To Power.' Simple DirectMedia Layer supports Linux, Win32, BeOS, MacOS, Solaris, IRIX, and FreeBSD."

PKG_CMAKE_OPTS_TARGET="-DSDL_STATIC=OFF \
                       -DLIBC=ON \
                       -DGCC_ATOMICS=ON \
                       -DASSEMBLY=ON \
                       -DALTIVEC=OFF \
                       -DOSS=OFF \
                       -DALSA=ON \
                       -DALSA_SHARED=ON \
                       -DESD=OFF \
                       -DESD_SHARED=OFF \
                       -DARTS=OFF \
                       -DARTS_SHARED=OFF \
                       -DNAS=OFF \
                       -DNAS_SHARED=ON \
                       -DSNDIO=OFF \
                       -DDISKAUDIO=OFF \
                       -DDUMMYAUDIO=OFF \
                       -DVIDEO_WAYLAND=OFF \
                       -DVIDEO_WAYLAND_QT_TOUCH=ON \
                       -DWAYLAND_SHARED=OFF \
                       -DVIDEO_MIR=OFF \
                       -DMIR_SHARED=OFF \
                       -DVIDEO_COCOA=OFF \
                       -DVIDEO_DIRECTFB=OFF \
                       -DVIDEO_VIVANTE=OFF \
                       -DDIRECTFB_SHARED=OFF \
                       -DFUSIONSOUND=OFF \
                       -DFUSIONSOUND_SHARED=OFF \
                       -DVIDEO_DUMMY=OFF \
                       -DINPUT_TSLIB=OFF \
                       -DPTHREADS=ON \
                       -DPTHREADS_SEM=ON \
                       -DDIRECTX=OFF \
                       -DSDL_DLOPEN=ON \
                       -DCLOCK_GETTIME=OFF \
                       -DRPATH=OFF \
                       -DRENDER_D3D=OFF"

if [ "$DISPLAYSERVER" = "x11" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libX11 libXrandr"
  
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_X11=ON \
                         -DX11_SHARED=ON \
                         -DVIDEO_X11_XCURSOR=OFF \
                         -DVIDEO_X11_XINERAMA=OFF \
                         -DVIDEO_X11_XINPUT=OFF \
                         -DVIDEO_X11_XRANDR=ON \
                         -DVIDEO_X11_XSCRNSAVER=OFF \
                         -DVIDEO_X11_XSHAPE=OFF \
                         -DVIDEO_X11_XVM=OFF"
else
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_X11=OFF"
fi

# Project Generic OpenGL
if [ ! "$OPENGL" = "no" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OPENGL"

  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_OPENGL=ON \
                         -DVIDEO_OPENGLES=OFF"
else
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_OPENGL=OFF \
                         -DVIDEO_OPENGLES=ON"
fi

# Project RPi OpenGLES
if [ "$OPENGLES" == "bcm2835-driver" ]; then
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_RPI=ON \
                         -DVIDEO_VULKAN=OFF"
else
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_RPI=OFF"
fi

# Project Amlogic OpenGLES
if [ "$OPENGLES" == "opengl-meson" ] || [ "$OPENGLES" == "opengl-meson-t82x" ]; then
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_MALI=ON \
                         -DVIDEO_VULKAN=OFF \
                         -DVIDEO_KMSDRM=OFF"
else
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DVIDEO_MALI=OFF"
fi


if [ "$PULSEAUDIO_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET pulseaudio"

  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DPULSEAUDIO=ON \
                         -DPULSEAUDIO_SHARED=ON"
else
  PKG_CMAKE_OPTS_TARGET="$PKG_CMAKE_OPTS_TARGET \
                         -DPULSEAUDIO=OFF \
                         -DPULSEAUDIO_SHARED=OFF"
fi

post_makeinstall_target() {
  $SED "s:\(['=\" ]\)/usr:\\1$SYSROOT_PREFIX/usr:g" $SYSROOT_PREFIX/usr/bin/sdl2-config

  rm -rf $INSTALL/usr/bin
}
