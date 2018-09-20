# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="glew"
PKG_VERSION="2.1.0"
PKG_SHA256="04de91e7e6763039bc11940095cd9c7f880baba82196a7765f727ac05a993c95"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://glew.sourceforge.net/"
PKG_URL="$SOURCEFORGE_SRC/glew/glew/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tgz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="graphics"
PKG_SHORTDESC="glew: The OpenGL Extension Wrangler Library"
PKG_LONGDESC="The OpenGL Extension Wrangler Library (GLEW) is a cross-platform C/C++ extension loading library. GLEW provides efficient run-time mechanisms for determining which OpenGL extensions are supported on the target platform. OpenGL core and extension functionality is exposed in a single header file."

make_target() {
  make CC="$CC" LD="$CC" AR="$AR" \
       POPT="$CFLAGS" LDFLAGS.EXTRA="$LDFLAGS" \
       GLEW_DEST="/usr" LIBDIR="/usr/lib" lib/libGLEW.a glew.pc
}

makeinstall_target() {
  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp -PR lib/libGLEW.a $SYSROOT_PREFIX/usr/lib

  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp -PR glew.pc $SYSROOT_PREFIX/usr/lib/pkgconfig

  mkdir -p $SYSROOT_PREFIX/usr/include
    cp -PR include/GL $SYSROOT_PREFIX/usr/include
}
