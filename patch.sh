#!/bin/sh

if [ $# -lt 1 ]; then
  echo 1>&2 "$0: Usage patch.sh <path to openjdk root>"
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
