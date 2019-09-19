#https://askubuntu.com/questions/712564/why-cant-i-see-169-aspect-ratios


sudo cvt 1920 1080 60

sudo xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync

sudo xrandr --addmode Virtual1 1920x1080_60.00

#sleep(0.3)

xrandr --output Virtual1 --mode "1920x1080_60.00"

