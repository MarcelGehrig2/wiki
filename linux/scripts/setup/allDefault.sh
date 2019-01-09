#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

chmod +x ../*/*.sh

sudo apt-get update

$script_dir/fixes.sh
$script_dir/toolchains.sh
$script_dir/tools.sh
$script_dir/gitDefault.sh
#$script_dir/multimedia.sh
$script_dir/dict.sh
#$script_dir/latex.sh
#$script_dir/ros.sh

#add myBashrc.sh to home/.bashrc
cat $script_dir/../inUse/myBashrcDefault.txt >> ~/.bashrc

cp -p $script_dir/files/Templates/* ~/Templates/

sudo apt-get update



