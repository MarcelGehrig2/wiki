#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

echo sudo service network-manager restart
