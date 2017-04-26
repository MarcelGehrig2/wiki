#!/bin/bash
# sourced by ~/.bashrc.sh

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

# alias
# #####

## Colorize the ls output ##
alias ls='ls --color=auto'
alias ll='ls -lah' 
alias l.='ls -d .* --color=auto'

alias ..='cd ..' 
alias ...='cd ../../'  
alias ....='cd ../../../' 
alias .....='cd ../../../../' 
alias .4='cd ../../../../' 
alias .5='cd ../../../../..'

#calculator
alias bc='bc -l'

alias diff='colordiff'

alias tree='tree -C'

alias mount='mount |column -t' 

# confirmation #
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'

# git
alias gitc='git s; git add --all; echo "### git commit ###"; git commit -m "commit"; git s'   #quick commit
alias gitp='git pull; gitc; git s; git push'    #quick pull, commit and push
source ~/wiki/linux/scripts/inUse/git-completion.bash

# myEnv
alias myEnvArm='. ~/wiki/linux/scripts/inUse/myEnv/envArm.sh'

# myEnv alias
alias myEnvBuildroot='. ~/wiki/linux/scripts/inUse/myEnv/buildroot.sh'


# text editor
alias gedit='xed'
export EDITOR='xed'


# set prompt
#PS1="\e[0;32m[\W]\$ \e[m "
PS1='\[\e[1;32m\]\W $ \[\e[0m\]'



# EtherCat
alias ethercat='. ~/wiki/linux/scripts/inUse/EtherCAT.sh'


# ROS
source ~/wiki/linux/scripts/inUse/ROS.sh
alias sshturtle='ssh kobuki@146.136.59.23'

