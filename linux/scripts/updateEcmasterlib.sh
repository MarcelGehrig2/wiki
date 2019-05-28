#!/bin/bash
# updates the ecmasterlib folder. rebuilds the kernelmodule atemsys. rebuilds ecmasterlib.
#
# author: 	Marcel Gehrig NTB
# created:	2018.03.21
# updated: 	-

script="$(readlink -f $0)"
script_dir="$(dirname $script)"


# checks if user is NOT root (checks if script is run without sudo)
if [ "$EUID" -ne 0 ]; then

  cd /home/mainpcp/movingChair/12_Software
  echo "UPDATESCRIPT:  reverting ecmasterlib:"
  svn revert -R ecmasterlib/
  cd ecmasterlib/externalLib/atemsys/
  echo "UPDATESCRIPT:  make clean atemsys module:"
  make clean
  echo "UPDATESCRIPT:  make modules atemsys module:"
  make modules
  cd ../../../scripts/make/
  echo "UPDATESCRIPT:  make all make-scripts executable:"
  chmod +x *.sh
  echo "UPDATESCRIPT:  build and install ecmasterlib:"
  ./make_ecmasterlib.sh 
  echo
  echo "ecmasterlib upddate was probably SUCCESSFUL"

else
  echo "ERROR: Do NOT run as root!"
fi
