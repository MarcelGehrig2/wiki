#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


HOME_DIR="/home/mainpcp"

# for logging
source $HOME_DIR/chairVariables.sh
now=$(date +"%Y.%d.%m_%H:%M.%S")
LOG_FILE_PATH="$HOME_DIR/logs/system/Log$CHAIRNAME-$now.tar"
tar cvf $LOG_FILE_PATH --files-from /dev/null

#tar -cvf - /var/log/syslog  | gzip -9 $LOG_FILE_PATH
#cat /var/log/syslog | gzip -c > $LOG_FILE_PATH
#gzip -c $FILE_LIST > $LOG_FILE_PATH

cd /var/log
tar -Prf	$LOG_FILE_PATH  syslog
tar -Prf	$LOG_FILE_PATH  syslog.1
tar -Prf	$LOG_FILE_PATH  boot.log
tar -Prf	$LOG_FILE_PATH  kern.log
tar -Prf	$LOG_FILE_PATH  kern.log.1
tar -Prf	$LOG_FILE_PATH  log/dmesg
tar -Prf	$LOG_FILE_PATH  dmesg.0
