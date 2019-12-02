#!/bin/bash
# sourced by ~/.bashrc.sh
[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


source ~/docker/dalias

# alias
# #####

## Colorize the ls output ##
alias sshsm='ssh debuguser@10.24.128.66'
alias sshvm='ssh -c aes256-cbc marcel@10.24.128.1'
