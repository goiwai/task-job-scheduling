d=$HOME/at
if ! test -d $d; then
    mkdir -p $d
fi
cd $d
date > $(date -Is).txt
