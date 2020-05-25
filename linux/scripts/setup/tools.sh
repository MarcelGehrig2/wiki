#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get -y install htop
sudo apt-get -y install tree
sudo apt-get -y install putty
sudo apt-get -y install pv      # progress bar for pipe
sudo apt-get -y install nautilus-open-terminal
sudo apt-get -y install vim-gtk3
sudo apt-get -y install repo

#VNC
sudo apt-get -y install x11vnc


# IDK
sudo apt-get -y install eclipse-jdt
sudo apt-get -y install kdevelop


# ssh
sudo apt-get -y install openssh-client


# synergy
#sudo apt-get -y install synergy
#use installer from synergy https://symless.com/synergy   otherwise encryption does not work

# snv
sudo apt-get -y install subversion     # SVN

# collection of programs for creating graphs; need by buildroot for "make graph-depends"
sudo apt-get -y install graphviz 

# colordiff
sudo apt-get -y install colordiff

# virtualbox
sudo apt-get -y install virtualbox virtualbox-qt virtualbox-dkms

#terminator
sudo apt-get -y install terminator
mkdir -p ~/.config/terminator
cp -p $script_dir/files/configTerminator ~/.config/terminator/config


# gparted
sudo apt-get -y install gparted


# screen
sudo apt-get -y install -y screen


# java
# sudo apt-get -y install default-jre
# sudo apt-get -y install default-jdk
# sudo apt-get -y install openjfx

#sudo add-apt-repository ppa:webupd8team/java
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
