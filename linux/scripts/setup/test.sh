#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

echo $script_dir
sudo cp -p $script_dir/files/98-altera.rules $script_dir/
