# Usage: bsub -cwd %J -o std.out -e std.err apptainer run --cleanenv --bind .:/workspace --bind $PWD --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest /bin/bash $PWD/B5-apptainer-centos7.sh
#        mkdir B5 && apptainer run --ipc --contain --cleanenv --bind ./B5:/workspace --bind $PWD --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest /bin/bash $PWD/B5-apptainer-centos7.sh
source /cvmfs/geant4.cern.ch/geant4/latest-ref/x86_64-centos7-gcc10-optdeb/bin/geant4.sh
source /cvmfs/sft.cern.ch/lcg/contrib/gcc/10/x86_64-centos7/setup.sh
cd /workspace
/cvmfs/sft.cern.ch/lcg/contrib/CMake/latest/Linux-x86_64/bin/cmake $(geant4-config --prefix)/share/Geant4/examples/basic/B5
make
./exampleB5 run2.mac
exit 0
