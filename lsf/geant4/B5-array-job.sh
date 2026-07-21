# Usage: bsub -cwd %J/%I -J 'B5[1-10]' -o std.out -e std.err /bin/bash $PWD/B5-array-job.sh
LSB_JOBID=${LSB_JOBID:-0}
LSB_JOBINDEX=${LSB_JOBINDEX:-0}

if test -d /.singularity.d; then
  cd /workspace
  source /cvmfs/geant4.cern.ch/geant4/latest-ref/x86_64-centos7-gcc10-optdeb/bin/geant4.sh
  source /cvmfs/sft.cern.ch/lcg/contrib/gcc/10/x86_64-centos7/setup.sh
  export PATH=/cvmfs/sft.cern.ch/lcg/contrib/CMake/latest/Linux-x86_64/bin:$PATH
else
  source /cvmfs/geant4.cern.ch/geant4/latest-ref/x86_64-el9-gcc11-optdeb/bin/geant4.sh
fi
cmake $(geant4-config --prefix)/share/Geant4/examples/basic/B5
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
