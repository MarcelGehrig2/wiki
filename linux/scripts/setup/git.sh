#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get install git
sudo apt-get install gitg
cp -p $script_dir/files/.gitconfig ~/

git config --global user.name "MarcelGehrig"
git config --global user.email "marcel.gehrig@ntb.ch"

#save username and password at next push
git config credential.helper store

