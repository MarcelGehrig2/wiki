#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done
