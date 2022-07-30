#! /bin/sh
script_name_=$(basename $0)
script_dir_=$(cd $(dirname $0) && pwd)
dir_at_exec_=$(cd . && pwd)
list_input_files=$script_dir_/.gitignore

if test -f $list_input_files; then
    cat $list_input_files | while read p; do
        if test $(/bin/echo -n $p | sed 's/^.*\.in$//g' | wc -c) -eq 0; then
            od=$(cd $script_dir_ && cd $(dirname $p) && pwd)
            of=$od/$(basename $p)
            cmd="dd bs=$((16*1024*1024)) if=/dev/urandom of=$of count=1"
            echo $cmd
            eval $cmd
        fi
    done
fi

exit 0
