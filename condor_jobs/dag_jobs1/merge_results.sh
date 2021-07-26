script_name=$(basename $0)
script_dir=$(cd $(dirname $0) && pwd)
dir_at_exec=$(cd . && pwd)

cat file0.out file1.out file2.out > result.out

exit 0
