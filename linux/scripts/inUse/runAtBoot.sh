	#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)

touch /tmp/runAsBoot
touch ~/runAsBoot

/home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh
/home/mgehrig2/wiki/linux/scripts/inUse/startVNC.sh




#switch to externel display
intern=eDP1
extern=HDMI2

#xrandr > /tmp/xrandr.log

if xrandr | grep "$extern connected"; then
    xrandr --output "$intern" --off --output "$extern" --auto
fi


