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
  echo 1>&2 "Usage: applyTweakVMPatches.sh <OpenJDK dir>"
  exit 1;
fi

echo patch target is $1
export PATCH_DIR=`pwd`/root
echo "Patching OpenJDK with patches from $PATCH_DIR"

cd $1
echo "Patching in OpenJDK root"
for i in $PATCH_DIR/*.patch; do patch -N -p1 < $i; done

cd $1/hotspot
echo "Patching in hotspot"
for i in $PATCH_DIR/hotspot/*.patch; do patch -N -p1 < $i; done

echo "Done. You can now build the changes with cd $1; make reconfigure clean images"
