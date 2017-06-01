#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


sudo apt-get -y install npm
sudo npm install -g --unsafe-perm node-red
sudo npm install -g npm@2.x
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g node-red-dashboard

