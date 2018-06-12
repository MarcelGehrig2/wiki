#!/bin/bash

# 20180515
# Marcel Gehrig
#
# All Upboards need to be runnint
# This script can be executet multiple time
#
# "serious errors were found while checking the disk drive for /" at boot -> needed user input
#  after this patch the system will atempt to repair automatically, if errors on dirve are found
# https://askubuntu.com/questions/151025/how-can-i-make-fsck-run-non-interactively-at-boot-time 

SCRIPT="$(readlink -f $0)"
SCRIPT_DIR="$(dirname $SCRIPT)"

#backup
now=$(date +"%Y.%m.%d__%H_%M.%S")
sudo cp -f /etc/default/rcS /etc/default/rcS.backup_$now


# update rcS on mainPC
#cd /etc/default
#sudo patch --forward -p0 < $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch
sudo patch --forward -p0 /etc/default/rcS $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch

# update rcS on UPBoards
scp $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch robot@192.168.0.11:/tmp
ssh -t robot@192.168.0.11 'sudo cp -ra /etc/default/rcS "/etc/default/rcS.backup_$(date +"%Y.%m.%d__%H_%M.%S")"'
ssh -t robot@192.168.0.11 'sudo patch --forward -p0 /etc/default/rcS /tmp/rcS.20180515_autoFsck.patch'

scp $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch robot@192.168.0.12:/tmp
ssh -t robot@192.168.0.12 'sudo cp -f /etc/default/rcS "/etc/default/rcS.backup_$(date +"%Y.%m.%d__%H_%M.%S")"'
ssh -t robot@192.168.0.12 'sudo patch --forward -p0 /etc/default/rcS /tmp/rcS.20180515_autoFsck.patch'

scp $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch robot@192.168.0.13:/tmp
ssh -t robot@192.168.0.13 'sudo cp -f /etc/default/rcS "/etc/default/rcS.backup_$(date +"%Y.%m.%d__%H_%M.%S")"'
ssh -t robot@192.168.0.13 'sudo patch --forward -p0 /etc/default/rcS /tmp/rcS.20180515_autoFsck.patch'

scp $SCRIPT_DIR/../files/rcS.20180515_autoFsck.patch robot@192.168.0.14:/tmp
ssh -t robot@192.168.0.14 'sudo cp -f /etc/default/rcS "/etc/default/rcS.backup_$(date +"%Y.%m.%d__%H_%M.%S")"'
ssh -t robot@192.168.0.14 'sudo patch --forward -p0 /etc/default/rcS /tmp/rcS.20180515_autoFsck.patch'

