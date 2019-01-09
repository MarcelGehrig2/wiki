#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

# http://wiki.ros.org/kinetic/Installation/Ubuntu
#sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get -y install ros-kinetic-desktop-full

sudo apt-get -y install ros−kinetic−turtlebot ros−kinetic−turtlebot−apps ros−kinetic−turtlebot−interactions ros−kinetic−turtlebot−simulator
