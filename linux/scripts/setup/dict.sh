#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

# https://sourceforge.net/projects/germandict/
sudo cp $script_dir/files/dict/* /usr/share/myspell/dicts/
