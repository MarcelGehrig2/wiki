#!/bin/bash

script="$(readlink -f $0)"
script_dir="$(dirname $script)"

#target="mpc5200RT_es107"
target="x86"
. "$script_dir/config.sh.in"


rm -rf "$eeros_build_dir"





mkdir -p $eeros_build_dir
pushd $eeros_build_dir
cmake -DCMAKE_TOOLCHAIN_FILE=$toolchain_file -DCMAKE_INSTALL_PREFIX=$install_dir -DCMAKE_BUILD_TYPE=$dcm_build_type $eeros_source_dir
make
make install
popd


#echo "copy EEROS to test folder"
#scp echo "copy to " "$target_name"
#scp $install_dir/lib/libeeros.so root@es107:/opt/eeros/lib/test
