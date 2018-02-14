#!/bin/bash
DISPLAY=:0

sudo pkill -f /usr/bin/synergyc

/usr/bin/synergyc --enable-crypto pcinf053
/usr/bin/synergyc --enable-crypto pcwinf040
