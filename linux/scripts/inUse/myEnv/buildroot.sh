#!/bin/bash

alias umountAll='umount /media/mgehrig2/boot;
                 umount /media/mgehrig2/rootfs;
                 lsblk'
alias umountAll

alias formatBoot='sudo mkfs.vfat -F 16 -n boot /dev/mmcblk0p1'
alias formatBoot

alias formatRootFS='sudo mkfs.ext4 -L rootfs -E nodiscard /dev/mmcblk0p2'
alias formatRootFS

alias extractToRootFS='sudo tar -C /media/mgehrig2/rootfs/ -xf output/images/rootfs.tar'
alias extractToRootFS
