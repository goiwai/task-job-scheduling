# Usage: bsub -cwd %J -o std.out -e std.err /bin/bash $PWD/B5.sh
source /cvmfs/geant4.cern.ch/geant4/latest-ref/x86_64-el9-gcc11-optdeb/bin/geant4.sh
cmake $(geant4-config --prefix)/share/Geant4/examples/basic/B5
make
./exampleB5 run2.mac
exit 0
