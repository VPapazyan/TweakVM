#!/bin/sh

# Copyright (c) 2014, Chris Newland. All rights reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if [ $# -lt 1 ]; then
  echo 1>&2 "Usage: copyOpenJavaFXToOpenJDK <path to OpenJavaFX> <path to OpenJDK>"
  exit 1;
fi

export OPENJFX=$1
export OPENJDK=$2
export OPENJDK9_J2SDK=$OPENJDK/build/linux-x86_64-normal-server-release/images/j2sdk-image

#===========================================
# Copy OpenJavaFX into the OpenJDK SDK image
#===========================================
cp $OPENJFX/build/sdk/rt/lib/javafx.properties $OPENJDK9_J2SDK/jre/lib

export BINARY_SOURCE=$OPENJFX/build/sdk/rt/lib/amd64/
export BINARY_TARGET=$OPENJDK9_J2SDK/jre/lib/amd64

cp $BINARY_SOURCE/libdecora_sse.so $BINARY_TARGET
cp $BINARY_SOURCE/libglass.so $BINARY_TARGET
cp $BINARY_SOURCE/libjavafx_iio.so $BINARY_TARGET
cp $BINARY_SOURCE/libprism_common.so $BINARY_TARGET
cp $BINARY_SOURCE/libprism_sw.so $BINARY_TARGET
cp $BINARY_SOURCE/libprism_es2.so $BINARY_TARGET
cp $BINARY_SOURCE/libjavafx_font.so $BINARY_TARGET
cp $BINARY_SOURCE/libjavafx_font_pango.so $BINARY_TARGET
cp $BINARY_SOURCE/libjavafx_font_freetype.so $BINARY_TARGET

cp $OPENJFX/build/sdk/rt/lib/ext/jfxrt.jar $OPENJDK9_J2SDK/jre/lib/ext
