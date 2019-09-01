setxkbmap -layout en_US -option caps:escape
xset r rate 200 45
xset s on -dpms
xsetroot -solid \#FFFFFF -cursor_name left_ptr
xbacklight -set 10
xrdb ~/.Xresources

# set desktop with custom effect
betterlockscreen -w dim

xcompmgr -c -r 3 -o 0.25 -l 5 -t 5 &

sxhkd &
dbus-launch bspwm
