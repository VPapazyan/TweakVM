TweakVM
=======

OpenJDK patches that add extra VM telemetry for analysis with JITWatch.

Project will consist of standard Linux diff patches that should apply cleanly to the head of OpenJDK from mercurial.
Will probably separate into JDK8 and JDK9 versions. Build scripts (shell) will be included (at least for Debian)

Ideas for extra telemetry:
* Escape analysis
* Print ideal graph on compilation
* Lock elisions
* Eliminated allocations
* Code cache fragmentation visualiser
