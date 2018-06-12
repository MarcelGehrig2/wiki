#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)



#sudo nice -n -8 $SCRIPT_DIR/child.sh &
$SCRIPT_DIR/nice_child.sh &
PID_PING_MONITOR=$!
# http://www.refining-linux.org/archives/29/22-Processes-with-high-and-low-priority/
# negative nice -> lower priority number -> HIGHER priority (nice -11 = prio 9)
sudo renice -n -11 -p $PID_PING_MONITOR
sleep 15


sudo pkill -P $$
