#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


pkill -HUP -f "cinnamon --replace"
