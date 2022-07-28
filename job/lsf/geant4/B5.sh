# Usage: bsub -cwd %J -o std.out -e std.err /bin/bash $PWD/B5.sh
geant4_version=10.7.1
gcc_version=830

. /etc/profile.d/modules.sh
module load gcc/$gcc_version

source /sw/packages/geant4/$geant4_version/bin/geant4.sh
cmake3 -DCMAKE_CXX_COMPILER=$(which g++) $(geant4-config --prefix)/share/Geant4-$(geant4-config --version)/examples/basic/B5
make

./exampleB5 run2.mac

exit 0
