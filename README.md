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

Instructions:
* Follow this gist to fetch OpenJDK9 and OpenJFX: https://gist.github.com/chriswhocodes/c5ca0766ded3046691f0
* Apply the TweakVM patches using ./patch.sh `<path_to_openjdk>`
* Build OpenJDK using `make reconfigure clean images`
