#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

alias tae='sudo -E ~/VT2/Software/testAppEEROSEVT2/buildx86/testappEEROSVT2'
alias tan='~/VT2/Software/simpleROSNodeVt2/buildx86/simpleROSNode'
alias lsros='echo rosnodes:; rosnode list; echo; echo rostopics:; rostopic list;'
