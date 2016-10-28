#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get install htop
sudo apt-get install tree
sudo apt-get install putty


#VNC
sudo apt-get install x11vnc


# IDK
sudo apt-get install eclipse-jdt
sudo apt-get install kdevelop


# ssh
sudo apt-get install openssh-server openssh-client


# synergy
sudo apt-get install synergy

# snv
sudo apt-get install subversion     # SVN

# collection of programs for creating graphs; need by buildroot for "make graph-depends"
sudo apt-get install graphviz 

# colordiff
sudo apt-get install colordiff

