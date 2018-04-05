#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)

if [ "$EUID" -ne 0 ]; then
  echo ""
else
  echo "do NOT run as root"
  exit
fi


#sudo apt install sshpass

#echo "alias sshmainpcp='sshpass -p chair ssh mainpcp@146.136.39.214 -p 9022'" >> ~/.bashrc
#echo "alias sshmasterpc='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9006'" >> ~/.bashrc
#echo "alias sshmainpc1='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9016'" >> ~/.bashrc
#echo "alias sshmainpc2='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9026'" >> ~/.bashrc
#echo "alias sshmainpc3='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9036'" >> ~/.bashrc
#echo "alias sshmainpc4='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9046'" >> ~/.bashrc
#echo "alias sshmainpc5='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9056'" >> ~/.bashrc
#echo "alias sshmainpc6='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9066'" >> ~/.bashrc
#echo "alias sshmainpc7='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9076'" >> ~/.bashrc
#echo "alias sshmainpc8='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9086'" >> ~/.bashrc
#echo "alias sshmainpc9='sshpass -p chair ssh mainpcp@98.116.5.90 -p 9096'" >> ~/.bashrc

echo "" >> ~/.bashrc
echo "alias sshmainpcp='ssh mainpcp@146.136.39.214 -p 9022'" >> ~/.bashrc
echo "alias sshmasterpc='ssh mainpcp@98.116.5.90 -p 9006'" >> ~/.bashrc
echo "alias sshmainpc1='ssh mainpcp@98.116.5.90 -p 9016'" >> ~/.bashrc
echo "alias sshmainpc2='ssh mainpcp@98.116.5.90 -p 9026'" >> ~/.bashrc
echo "alias sshmainpc3='ssh mainpcp@98.116.5.90 -p 9036'" >> ~/.bashrc
echo "alias sshmainpc4='ssh mainpcp@98.116.5.90 -p 9046'" >> ~/.bashrc
echo "alias sshmainpc5='ssh mainpcp@98.116.5.90 -p 9056'" >> ~/.bashrc
echo "alias sshmainpc6='ssh mainpcp@98.116.5.90 -p 9066'" >> ~/.bashrc
echo "alias sshmainpc7='ssh mainpcp@98.116.5.90 -p 9076'" >> ~/.bashrc
echo "alias sshmainpc8='ssh mainpcp@98.116.5.90 -p 9086'" >> ~/.bashrc
echo "alias sshmainpc9='ssh mainpcp@98.116.5.90 -p 9096'" >> ~/.bashrc


