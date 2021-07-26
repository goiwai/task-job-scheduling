script_name=$(basename $0)
script_dir=$(cd $(dirname $0) && pwd)
dir_at_exec=$(cd . && pwd)

if test $# -ne 1; then
    echo "$script_name <output_dir>" >&2
    echo $#
    exit 1
elif ! test -d $1; then
    mkdir -p $1
fi

for n in {0..99}; do
    cmd="md5sum many_input_files/file$n.in > $1/file$n.out"
    echo $cmd
    eval $cmd
done

exit 0
