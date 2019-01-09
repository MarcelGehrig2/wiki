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


# alias
# #####

## Colorize the ls output ##
alias ls='ls --color=always'
alias ll='ls -lah' 
alias l.='ls -d .* --color=always'

alias ..='cd ..' 
alias ...='cd ../../'  
alias ....='cd ../../../' 
alias .....='cd ../../../../' 
alias .4='cd ../../../../' 
alias .5='cd ../../../../..'

#calculator
alias bc='bc -l'
alias calc='bc'

alias diff='colordiff'

alias tree='tree -C'

alias mount='mount |column -t' 

alias make='make -j4'

alias grep='grep --color=auto'

alias reboot='systemctl reboot'

alias restartNetwork='sudo service network-manager restart'

alias restartCinnamon='$SCRIPT_DIR/restartCinnamon.sh'
alias fucking='sudo'

alias nano='nano -u --smooth --smarthome --const --autoindent'

alias lsblk='lsblk -f'

alias myecho='$SCRIPT_DIR/myEcho.sh'

alias team='/opt/teamviewer/tv_bin/TeamViewer &'

# confirmation #
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'

# git
alias gitc='git s; git add --all; echo "### git commit ###"; git commit -m "commit"; git s'   #quick commit
alias gitp='git pull; gitc; git s; git push'    #quick pull, commit and push
alias gitstore='git config credential.helper store'
source ~/git-completion.bash

# myEnv
#alias myEnvArm2='source $SCRIPT_DIR/myEnv/envArm.sh'

# myEnv alias
#alias myEnvBuildroot='source $SCRIPT_DIR/myEnv/buildroot.sh'


# text editor
alias gedit='xed'
export EDITOR='xed'


# set prompt
#PS1="\e[0;32m[\W]\$ \e[m "
PS1='\[\e[1;32m\]\W $ \[\e[0m\]'



# EtherCat
#alias ethercat='source $SCRIPT_DIR/EtherCAT.sh'


# ROS
#source $SCRIPT_DIR/ROS.sh
#alias sshturtle='ssh kobuki@146.136.59.23'

#source $SCRIPT_DIR/vt2.sh


#alias sshmain0='ssh mainpc0@mainpc0'
#alias sshmain0ip='ssh mainpc0@146.136.56.119'
#alias sshmainpcp='ssh mainpcp@146.136.39.214 -p 9022'


# chair stuff
#source $SCRIPT_DIR/myBashrcChair.sh

source $SCRIPT_DIR/wiki.sh

