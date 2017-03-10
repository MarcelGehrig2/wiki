#marcel-linux-laptop:1::5902

#x11vnc -rfbauth ~/.vnc/passwd -noxdamage

#x11vnc -noshm -scale 7/10 -many -background

x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -rfbauth ~/.vnc/passwd -background -forever

#x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -rfbauth ~/.vnc/passwd -noshm -many -background -encodings Tight -qualitiy 9


#x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -auth /var/run/lightdm/root/:0 -usepw
