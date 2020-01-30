#!/bin/bash
# sourced by ~/.bashrc.sh
[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


alias log1='tail -f /tmp/rs485:1.log'
alias log2='tail -f /tmp/rs485:2.log'
alias logsystem='sudo journalctl -o verbose -t sm-meterreader -f | grep -e MESSAGE -e SM_MESSAGE_ARGS'
alias update='date; sudo swupdate -v -H smartmanager:s2 -d "-u http://10.24.129.227/img/rpwr-s2/core-image-repower-debug-swu-rpwr-s2.swu"'
