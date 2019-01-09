#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get -y install git
sudo apt-get -y install gitg
sudo apt-get -y install gitk




