#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


# yes/no
# ######
while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) echo "yes"; exit;;
        [Nn]* ) echo "no";  exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



# select
# ######
echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "yes"; break;;
        No ) echo "no"; exit;;
    esac
done
