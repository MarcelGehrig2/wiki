#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


# https://www.cyberciti.biz/faq/bash-for-loop/


for VARIABLE in 1 2 3 4 5 
do
	echo $VARIABLE
	echo aaaa
done
