#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


$script_dir/gitCommon.sh

cp -p $script_dir/files/.gitconfigPrivate ~/.gitconfig

#save username and password at next push
git config credential.helper store


