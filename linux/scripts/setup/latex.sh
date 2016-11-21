#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


sudo apt-get install texlive-base
sudo apt-get install texlive-binaries
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-lang-german
sudo apt-get install texlive-latex-recommended
sudo apt-get install texlive-pictures
sudo apt-get install texlive-generic-extra

sudo apt-get install texmaker
