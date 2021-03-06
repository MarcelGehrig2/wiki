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

IP_SM="10.24.128.7"
IP_SM3="10.24.128.6"


alias sshsmd='ssh -o StrictHostKeyChecking=no debuguser@$IP_SM'
alias sshsmr='ssh -o StrictHostKeyChecking=no root@$IP_SM'
alias sshsm='sshsmr'
alias sshsmd3='ssh -o StrictHostKeyChecking=no debuguser@$IP_SM3'
alias sshsmr3='ssh -o StrictHostKeyChecking=no root@$IP_SM3'
alias sshsm3='sshsmr3'
alias sshsmip='echo $IP_SM'
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


IP_RASPBERRY="10.24.129.240"
alias usbaddls='printf "usbadd3    usbadd1    |Ethe|\nusbadd4    usbadd2    |rnet|\n\n"; printf "\n usbsub0, usbsub1 ...\n usbaddrb\n\n"; printf "1-1.1\nKamstrup    AIL256524    71488     33\n\n1-1.2\nE650    94772924\n\n1-1.3\nAS3000    20282563\nAS3500    20221311\nAS1440    251508\nAS1500    250707\n\n1-1.4\nE350     11261252\nAS1440     03548285\nAS3000     20215147\nEnsor    10000796\n\n"; sudo usbip list -r $IP_RASPBERRY; lsu -al' 
alias usbadd1='lsu; sudo usbip attach -r $IP_RASPBERRY -b 1-1.1 && sleep 0.5; lsu -al'
alias usbadd2='lsu; sudo usbip attach -r $IP_RASPBERRY -b 1-1.2 && sleep 0.5; lsu -al'
alias usbadd3='lsu; sudo usbip attach -r $IP_RASPBERRY -b 1-1.3 && sleep 0.5; lsu -al'
alias usbadd4='lsu; sudo usbip attach -r $IP_RASPBERRY -b 1-1.4 && sleep 0.5; lsu -al'
alias usbsub0='lsu; sudo sudo usbip detach -p 0 # 00 && sleep 0.5; lsu -al'
alias usbsub1='lsu; sudo sudo usbip detach -p 1 # 00 && sleep 0.5; lsu -al'	
alias usbsub2='lsu; sudo sudo usbip detach -p 2 # 00 && sleep 0.5; lsu -al'
alias usbsub3='lsu; sudo sudo usbip detach -p 3 # 00 && sleep 0.5; lsu -al'
alias usbaddrb="echo 'PW: raspberry'; ssh -t pi@$IP_RASPBERRY 'sudo systemctl reboot'"


alias testmeter='/home/marcel/repower/yocto/build/workspace/sources/sm-apps/cmake-build-debug/SM_meter-reader/test/test_meter'
alias testmeterls='echo "testmeter -c 00000000 -p rs485:1 -b 96007E1 -m 20160019 -t AS3000 -e com,auto"'


# copy to sm
YOCTO_METAS_PATH="/home/marcel/repower/yoctoMetas"
# /home/marcel/repower/yoctoMetas/build/tmp/work/rpwr_s2-phytec-linux-gnueabi/core-image-repower-debug-fit/1.0-r0/rootfs/usr/bin
# /home/marcel/repower/yoctoMetas/build/tmp/work/cortexa7hf-neon-vfpv4-phytec-linux-gnueabi/sm-apps/1.0+git999-r0/package/usr/bin

SM_METER_READER_PATH="$YOCTO_METAS_PATH/build/tmp/work/cortexa7hf-neon-vfpv4-phytec-linux-gnueabi/sm-apps/1.0+git999-r0/package/usr/bin/sm-meterreader"
alias cpymr='scp -o StrictHostKeyChecking=no  $SM_METER_READER_PATH root@$IP_SM:/usr/bin'



