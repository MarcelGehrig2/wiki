#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

chmod +x ../*/*.sh

sudo apt-get update

$script_dir/fixes.sh
$script_dir/toolchains.sh
$script_dir/tools.sh
$script_dir/git.sh
$script_dir/multimedia.sh
$script_dir/dict.sh
$script_dir/latex.sh

#add myBashrc.sh to home/.bashrc
echo ". ~/wiki/linux/scripts/inUse/myBashrc.sh" >> ~/.bashrc

cp -p $script_dir/files/Templates/* ~/Templates/

cp -p $script_dir/files/autostart/* ~/.config/autostart

sudo apt-get update



