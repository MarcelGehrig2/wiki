#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

atemsysKoPath="~/projects/020_EtherCAT/EC-Master-V2.8-Linux_x86-Eval/Sources/LinkOsLayer/Linux/atemsys/atemsys.ko"
installPath="~/projects/020_EtherCAT/EC-Master-V2.8-Linux_x86-Eval"

alias insmodEtherCAT='sudo insmod $atemsysKoPath'
alias insmodEtherCAT
