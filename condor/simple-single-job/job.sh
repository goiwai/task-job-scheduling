script_name_=$(basename $0)
script_dir_=$(cd $(dirname $0) && pwd)
dir_at_exec_=$(cd . && pwd)

output=$dir_at_exec_/random_pseudo.data

# output into std.out
for cmd in hostname pwd whoami; do
    echo "cmd=$cmd"
    eval $cmd
done

# output into std.err
cmd_kill="kill 123456"
echo $cmd_kill
eval $cmd_kill
echo "The output message of the command above ($cmd_kill) goes into stderr." >&2

# creates a 256 MiB of random psuedo data into the file named in "pseudo.data".
cmd_to_create_file="dd bs=$((16*1024*1024)) if=/dev/urandom of=$output count=16"
echo $cmd_to_create_file
eval $cmd_to_create_file

# gives some stress 60s
# cmd_to_stress="stress --cpu 1 --io 10 --vm 100 --hdd 10 --timeout 60"
# echo $cmd_to_stress
# eval $cmd_to_stress

# ROOT: generate hsimple.root file
source /cvmfs/sft.cern.ch/lcg/app/releases/ROOT/6.36.00/x86_64-almalinux9.5-gcc115-opt/bin/thisroot.sh
cmd_root_hsimple="root -b -l -q $ROOTSYS/tutorials/hsimple.C"
echo $cmd_root_hsimple
eval $cmd_root_hsimple

exit 0
