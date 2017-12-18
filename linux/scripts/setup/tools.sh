#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get -y install htop
sudo apt-get -y install tree
sudo apt-get -y install putty
sudo apt-get -y install pv      # progress bar for pipe


#VNC
sudo apt-get -y install x11vnc


# IDK
sudo apt-get -y install eclipse-jdt
sudo apt-get -y install kdevelop


# ssh
sudo apt-get -y install openssh-server openssh-client


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

# unetboot
sudo add-apt-repository ppa:gezakovacs/ppa
sudo apt-get update
sudo apt-get install unetbootin
sudo apt-get install extlinux


# grub customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update
sudo apt-get install -y grub-customizer


