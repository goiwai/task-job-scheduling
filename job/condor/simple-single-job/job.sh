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
kill 123456
echo "The message above should go into stderr." >&2

# creates a 256 MiB of random psuedo data into the file named in "pseudo.data".
cmd_to_create_file="dd bs=$((16*1024*1024)) if=/dev/urandom of=$output count=16"
echo $cmd_to_create_file
eval $cmd_to_create_file

# gives some stress 60s
# cmd_to_stress="stress --cpu 1 --io 10 --vm 100 --hdd 10 --timeout 60"
# echo $cmd_to_stress
# eval $cmd_to_stress

# ROOT benchmarks
cmd_root_benchmarks="root -b -l -q /usr/local/tutorials/benchmarks.C"
echo $cmd_root_benchmarks
eval $cmd_root_benchmarks

exit 0
