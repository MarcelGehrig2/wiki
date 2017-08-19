#!/bin/bash
# sourced by ~/wiki/linux/scripts/inUse/myBashrc.sh

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

alias sshturtle='ssh kobuki@146.136.59.23'

source /opt/ros/kinetic/setup.bash

#ROS_MASTER_URI=http://manuel-OptiPlex-790:11311

alias useRosIlg=ROS_MASTER_URI=http://manuel-OptiPlex-790:11311
alias useRosLocal=ROS_MASTER_URI=http://localhost:11311

alias motorsim='roslaunch motor_gazebo motor_gazebo_eeros.launch'


#roscore
#rosparam set enable_statistics true
