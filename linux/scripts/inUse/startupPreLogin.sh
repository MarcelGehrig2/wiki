#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

#called from "/etc/rc.local"
