#!/bin/bash
# sourced by ~/wiki/linux/scripts/inUse/myBashrc.sh

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

alias sshturtle='ssh kobuki@146.136.59.23'

source /opt/ros/kinetic/setup.bash

rosparam set enable_statistics true
