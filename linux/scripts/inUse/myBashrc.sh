#!/bin/bash

# alias
# #####

## Colorize the ls output ##
alias ls='ls --color=auto'
alias ll='ls -lah' 
alias l.='ls -d .* --color=auto'

alias ..='cd ..' 
alias ...='cd ../../../' 
alias ....='cd ../../../../' 
alias .....='cd ../../../../' 
alias .4='cd ../../../../' 
alias .5='cd ../../../../..'

#calculator
alias bc='bc -l'

alias diff='colordiff'

alias mount='mount |column -t' 

# confirmation #
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'

# git
alias gitc='git s; git add --all; git commit -m "commit"; git s'   #quick commit
alias gitp='git s; git add --all; git commit -m "commit"; git s; git push'    #quick commit and push
