#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


#source /opt/ros/kinetic/setup.bash
source ~/wiki/linux/scripts/inUse/myBashrc.sh
~/Qt5.7.0/Tools/QtCreator/bin/qtcreator &
