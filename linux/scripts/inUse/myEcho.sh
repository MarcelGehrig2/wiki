#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

echo sudo service network-manager restart
echo
echo ROS_MASTER_URI=http://manuel-OptiPlex-790:11311
echo
echo rqt rqt_graph rviz lsros
echo
echo export DISPLAY=:0; cinnamon --replace &
