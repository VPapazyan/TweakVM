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
  echo 1>&2 "Usage: buildOpenJavaFX.sh <OpenJavaFX dir>"
  exit 1;
fi

export OPENJFX=$1

#===========================================
# Set up bootstrap JDK (1.8 needed)
#===========================================
#export JAVA_HOME=/home/chris/jdk1.8.0_40

#===========================================
# Add Gradle bin directory to path if needed
#===========================================
export PATH=$PATH:/home/chris/gradle-1.8/bin

#=================
# Build OpenJFX
#=================
cd $OPENJFX
gradle clean
gradle build
