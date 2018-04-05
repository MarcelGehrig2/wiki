#!/bin/bash

## Adds library path of ROS to '/etc/ld.so.cache' so it can be found by applications which are executed with sudo
## https://unix.stackexchange.com/questions/256893/relationship-between-ldconfig-and-ld-so-cache 
## 
## Execute this script anywhere with sudo to add the path on this machine
##
## Marcel Gehrig	19.12.2017
## ############################################################################

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)

# checks if user is NOT root (checks if script is run without sudo)
if [ "$EUID" -ne 0 ]; then
  echo "/opt/ros/indigo/lib" | sudo tee /etc/ld.so.conf.d/$USER.conf
  sudo ldconfig
else
  echo "do NOT run as root"
  exit
fi
