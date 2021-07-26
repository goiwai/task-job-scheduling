script_name=$(basename $0)
script_dir=$(cd $(dirname $0) && pwd)
dir_at_exec=$(cd . && pwd)

for n in {0..2}; do
    cmd="dd bs=$((16*1024*1024)) if=/dev/urandom of=file$n.in count=1"
    echo $cmd
    eval $cmd
done

exit 0
