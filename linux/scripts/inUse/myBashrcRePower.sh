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


## To automatically accept ECDSA fingerprint
## https://askubuntu.com/questions/123072/ssh-automatically-accept-keys
##  sudo nano ~/.ssh/config
# Host 10.24.128.66 
#    Hostname 10.24.128.66
#    StrictHostKeyChecking no

# alias
# #####

IP_SM="10.24.128.66"

alias sshsmd='ssh-keygen -f "/home/marcel/.ssh/known_hosts" -R $IP_SM && ssh debuguser@$IP_SM'
alias sshsmr='ssh-keygen -f "/home/marcel/.ssh/known_hosts" -R $IP_SM && ssh root@$IP_SM'
alias sshsm='sshsmr'
alias sshsmwait='while ! sshsm
					do
					    echo "Trying again..."
					done'
alias sshvm='ssh -c aes256-cbc marcel@10.24.128.1'
alias lsu='ls /dev/ttyU*'

LOG_PATH="/home/marcel/repower/notes/logs"
alias cplogslocal='cp /tmp/rs485:1.log $LOG_PATH/$(date +"%Y%m%d_%H%M%S")_mg.log && rm /tmp/rs485:1.log'
alias cplogssm='scp debuguser@10.24.128.66:/tmp/rs485:1.log $LOG_PATH/$(date +"%Y%m%d_%H%M%S")_sm.log'
alias cdlogdir='cd $LOG_PATH'


BASHRC_PATH_TARGET="/home/root/.bashrc"

alias sminit="
				sshsmwait;
			  	scp $SCRIPT_DIR/myBashrcSM.sh root@$IP_SM:$BASHRC_PATH_TARGET;

			  	ssh root@$IP_SM '
			  					sudo chmod +x $BASHRC_PATH_TARGET
			  					source $BASHRC_PATH_TARGET;
			  				   	touch /tmp/rs485:1.log;			
			                   	chown smartuser:smartuser /tmp/rs485:1.log;
			                   	touch /tmp/rs485:2.log;			
			                   	chown smartuser:smartuser /tmp/rs485:2.log;		
			                   	sudo mount -o remount,rw /provisioning/;			
			                   	';

			  	sshsm"


alias usbaddls='printf "usbadd3    usbadd1    |Ethe|\nusbadd4    usbadd1    |rnet|\n"'
alias usbadd1='lsu; sudo usbip attach -r 10.24.129.240 -b 1-1.1; sleep 0.3; lsu'
alias usbadd2='lsu; sudo usbip attach -r 10.24.129.240 -b 1-1.2; sleep 0.3; lsu'
alias usbadd3='lsu; sudo usbip attach -r 10.24.129.240 -b 1-1.3; sleep 0.3; lsu'
alias usbadd4='lsu; sudo usbip attach -r 10.24.129.240 -b 1-1.4; sleep 0.3; lsu'