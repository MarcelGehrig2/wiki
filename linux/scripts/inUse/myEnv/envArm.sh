export ARCH=arm
echo $ARCH

export CROSS_COMPILE=arm-linux-gnueabihf-
echo $CROSS_COMPILE

alias makeArm='time make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j4'
alias makeArm
