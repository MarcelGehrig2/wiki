#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


export DISPLAY=:0; cinnamon &
