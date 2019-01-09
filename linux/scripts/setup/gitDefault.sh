#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


$script_dir/gitCommon.sh

cp -p $script_dir/files/.gitconfigDefault ~/.gitconfig
cp -p $script_dir/../inUse/git-completion.bash ~/

