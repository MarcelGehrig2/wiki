#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)






if command -v rostopic list > /dev/null; then
    echo "command found"
    echo "startRosTopicMonitor.sh: ROS_MASTER_URI:"
    echo $ROS_MASTER_URI
else
	echo "command not found"
fi
