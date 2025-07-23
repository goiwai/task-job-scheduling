# Usage: bsub -cwd %J -o std.out -e std.err apptainer run --bind .:/workspace --bind $PWD --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest /bin/bash $PWD/B5-apptainer-centos7.sh
#        mkdir B5 && apptainer run --ipc --contain --cleanenv --bind ./B5:/workspace --bind $PWD --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest /bin/bash $PWD/B5-apptainer-centos7.sh
source /cvmfs/geant4.cern.ch/geant4/latest-ref/x86_64-centos7-gcc10-optdeb/bin/geant4.sh
source /cvmfs/sft.cern.ch/lcg/contrib/gcc/10/x86_64-centos7/setup.sh
cd /workspace
/cvmfs/sft.cern.ch/lcg/contrib/CMake/latest/Linux-x86_64/bin/cmake $(geant4-config --prefix)/share/Geant4/examples/basic/B5
make

mac=sim.mac
cat <<EOF > $mac
/run/initialize
/B5/generator/randomizePrimary FALSE
/B5/generator/sigmaMomentum 0. 
/B5/generator/sigmaAngle 0.
/run/verbose 1
/run/printProgress 0
/random/setSeeds ${LSB_JOBID} ${LSB_JOBINDEX}
/gun/particle e+
/B5/detector/armAngle 30. deg
/B5/generator/momentum 100. GeV
/B5/field/value 100. tesla
/analysis/setFileName file.root
/run/beamOn 100
EOF

./exampleB5 $mac

exit 0
