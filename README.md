TweakVM
=======

Patches for OpenJDK 9 that add extra VM telemetry to hotspot.log for analysis with JITWatch.

Initially targeted at Debian Linux x86_64

Ideas:

* Escape analysis
* Print ideal graph on compilation
* Lock elisions
* Eliminated allocations
* Code cache fragmentation visualiser

Instructions (first time):
```shell
./fetchOpenJDK.sh <OpenJDK destination>
./fetchOpenJavaFX.sh <OpenJavaFX destination>
./fetchGradle.sh (needed to build OpenJavaFX. Skip if already installed)
./applyTweakVMPatches.sh <OpenJDK dir>
./buildOpenJDK.sh <OpenJDK dir>
./buildOpenJavaFX.sh <OpenJavaFX dir>
./copyOpenJavaFXToOpenJDK.sh <OpenJavaFX dir> <OpenJDK dir>
```

Instructions (subsequent builds):
```shell
./updateOpenJDK.sh <OpenJDK destination>
./updateOpenJavaFX.sh <OpenJavaFX destination>
./applyTweakVMPatches.sh <OpenJDK dir>
./buildOpenJDK.sh <OpenJDK dir>
./copyOpenJavaFXToOpenJDK.sh <OpenJavaFX dir> <OpenJDK dir>
```
