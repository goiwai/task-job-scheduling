for n in {1..3}; do
    cmd="dd bs=$((16*1024*1024)) if=/dev/urandom of=file$n.in count=1"
    echo $cmd
    eval $cmd
done

exit 0
