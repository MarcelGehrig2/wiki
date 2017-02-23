#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get -y install git
sudo apt-get -y install gitg
sudo apt-get -y install gitk

cp -p $script_dir/files/.gitconfig ~/

git config --global user.name "MarcelGehrig"
git config --global user.email "marcel.gehrig@ntb.ch"

#save username and password at next push
git config credential.helper store

