#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

# http://wiki.ntb.ch/infoportal/software/linux/ubuntu/crosstoolchain/start 

#
sudo apt-get -y install cmake
sudo apt-get -y install libncurses5-dev build-essential libssl-dev
sudo apt-get -y install libcomedi-dev libcomedi0
sudo apt-get -y install libelf-dev
sudo apt-get -y install libnuma-dev


# Toolchain für PowerPC
sudo apt-get -y install libc6-powerpc-cross libc6-dev-powerpc-cross binutils-powerpc-linux-gnu libncurses5-dev build-essential gcc-4.8-powerpc-linux-gnu g++-4.8-powerpc-linux-gnu u-boot-tools 

sudo ln -s /usr/bin/powerpc-linux-gnu-gcc-4.8 /usr/bin/powerpc-linux-gnu-gcc


# Toolchain für ARM
sudo apt-get -y install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi  binutils-arm-linux-gnueabihf gcc-4.7-arm-linux-gnueabi gcc-4.7-arm-linux-gnueabihf g++-4.7-arm-linux-gnueabi g++-4.7-arm-linux-gnueabihf libncurses5-dev linux-libc-dev-armel-cross uboot-mkimage xapt

sudo apt-get -y install gcc-arm-linux-gnueabi


