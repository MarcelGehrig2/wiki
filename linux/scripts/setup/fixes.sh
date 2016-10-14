#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"



# Patch for JTAG error with Quartus http://fabionotes.blogspot.ch/2014/05/altera-de0.html
sudo cp $script_dir/files/98-altera.rules /etc/udev/rules.d/
