#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

#backup
now=$(date +"%Y.%d.%m_%H__%M.%S")
sudo cp -f /etc/rc.local /etc/rc.local.backup_$now

sudo cp -pf $(dirname $script_dir)/files/rc.local /etc/

