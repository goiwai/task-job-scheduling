# Usage examples:
# - run a task right now:
#   at -f task.sh now
# - run a task 30 minutes later:
#   at -f task.sh + 30 minutes
# - run a task 24 o'clock:
#   at -f task.sh midnight
d=$HOME/at
if ! test -d $d; then
    mkdir -p $d
fi
cd $d
date > $(date -Is).txt
