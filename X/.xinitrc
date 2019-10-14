setxkbmap -layout en_US -option caps:escape
xset r rate 200 45
xset s on -dpms
xsetroot -solid \#FFFFFF -cursor_name left_ptr
xbacklight -set 10
xrdb ~/.Xresources

xcompmgr -c -r 3 -o 0.25 -l 5 -t 5 &

autocutsel &
sxhkd &
dbus-launch bspwm
