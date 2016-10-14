#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

# http://wiki.ntb.ch/infoportal/software/linux/ubuntu/crosstoolchain/start 

# CMake
sudo apt-get install cmake

sudo apt-get install libcomedi-dev libcomedi0


# Toolchain für PowerPC
sudo apt-get install libc6-powerpc-cross libc6-dev-powerpc-cross binutils-powerpc-linux-gnu libncurses5-dev build-essential gcc-4.8-powerpc-linux-gnu g++-4.8-powerpc-linux-gnu u-boot-tools 

sudo ln -s /usr/bin/powerpc-linux-gnu-gcc-4.8 /usr/bin/powerpc-linux-gnu-gcc


# Toolchain für ARM
sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi gcc-4.7-arm-linux-gnueabi g++-4.7-arm-linux-gnueabi libncurses5-dev linux-libc-dev-armel-cross uboot-mkimage xapt



