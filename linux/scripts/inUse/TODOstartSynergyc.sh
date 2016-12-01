#!/bin/bash

pgrep "synergyc" # -> 2208
		 #    2212


xargs -0 < /proc/2208/cmdline
# /usr/bin/synergyc --enable-crypto pcinf053
