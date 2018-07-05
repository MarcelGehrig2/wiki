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


for VARIABLE in 192.168.0.11 192.168.0.13
do
	echo $VARIABLE
	echo 
done


echo "iterating list:"
LIST="
192.168.0.11
192.168.0.13 
asdf
"

for VARIABLE in $LIST
do
	echo $VARIABLE
	echo 
done


for i in {1..5};
do
	echo $i
done
