mkdir -p $WORKING_DIR || exit 1
apptainer run --bind $WORKING_DIR:/workspace --bind $PWD --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest /bin/bash $PWD/B5-multiple-job.sh

# apptainer --verbose run --cleanenv --bind /cvmfs /cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/sft/docker/centos7:latest cat /etc/redhat-release

exit 0
