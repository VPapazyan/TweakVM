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
  echo 1>&2 "Usage: buildOpenJDK.sh <OpenJDK dir>"
  exit 1;
fi

export OPENJDK9=$1

#===========================================
# Set up bootstrap JDK (1.8 needed for JDK9)
#===========================================
#export JAVA_HOME=/home/chris/jdk1.8.0_40

#==============================================
# Install required Debian packages with apt-get
#==============================================
#sudo apt-get install build-essential bison flex gperf libasound2-dev libgl1-mesa-dev \
#    libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libjpeg-dev \
#    libpng-dev libx11-dev libxml2-dev libxslt1-dev libxt-dev \
#    libxxf86vm-dev pkg-config qt4-qmake x11proto-core-dev \
#    x11proto-xf86vidmode-dev libavcodec-dev mercurial libgtk2.0-dev \
#    ksh libxtst-dev libudev-dev zip unzip libcups2-dev

#=================
# Build OpenJDK 9
#=================
cd $OPENJDK9
#chmod u+x configure
#./configure
#make clean
make images
