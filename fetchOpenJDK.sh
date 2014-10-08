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
  echo 1>&2 "Usage: fetchOpenJDK.sh <OpenJDK destination dir>"
  exit 1;
fi

#================================================================================
# Fetches latest OpenJDK
#================================================================================
export OPENJDK9=$1

mkdir $OPENJDK9

#=================
# Fetch OpenJDK 9
#=================
hg clone http://hg.openjdk.java.net/jdk9/dev $OPENJDK9
cd $OPENJDK9
chmod u+x get_source.sh
./get_source.sh
