#! /bin/sh
script_name_=$(basename $0)
script_dir_=$(cd $(dirname $0) && pwd)
dir_at_exec_=$(cd . && pwd)
gitignore=$script_dir_/.gitignore

if test -f "$gitignore"; then
    sed 's/#.*$//g' "$gitignore" | awk '{if (NF > 0) print}' | grep -E '.*\.in$' | while read f; do
        of=$script_dir_/$f
        cmd="dd bs=$((1*1024*1024)) if=/dev/urandom of=\"$of\" count=16"
        echo $cmd
        #eval $cmd
    done
fi

exit 0
