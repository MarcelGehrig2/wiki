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

## cd stuff
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
alias fuck='sudo $(history -p !!)'
alias redo='sudo $(history -p !!)'

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
source ~/wiki/linux/scripts/inUse/git-completion.bash

# myEnv
#alias myEnvArm2='source $SCRIPT_DIR/myEnv/envArm.sh'

# myEnv alias
#alias myEnvBuildroot='source $SCRIPT_DIR/myEnv/buildroot.sh'

# hibernate
alias hn='cinnamon-screensaver-command -l && sudo hibernate'



# vim
alias vv='vim $(fzf)'
set -o vi

# set prompt
#PS1="\e[0;32m[\W]\$ \e[m "
PS1='\[\e[1;32m\]\W $ \[\e[0m\]'

alias ssh1='ssh ubuntu@pcwinf039-linux'

# EtherCat
#alias ethercat='source $SCRIPT_DIR/EtherCAT.sh'



source $SCRIPT_DIR/wiki.sh


mkc ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
