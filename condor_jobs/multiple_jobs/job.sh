script_name=$(basename $0)
script_dir=$(cd $(dirname $0) && pwd)
dir_at_exec=$(cd . && pwd)

cmd="md5sum $1 > $2"
echo $cmd
eval $cmd

exit 0
