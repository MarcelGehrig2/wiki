#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get -y install texlive-base
sudo apt-get -y install texlive-binaries
sudo apt-get -y install texlive-fonts-recommended
sudo apt-get -y install texlive-lang-german
sudo apt-get -y install texlive-latex-recommended
sudo apt-get -y install texlive-pictures
sudo apt-get -y install texlive-generic-extra

sudo apt-get -y install texmaker
