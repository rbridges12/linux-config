# remap caps lock to escape for vim
setxkbmap -option caps:escape

# turn on tap clicking on mousepad
xinput --set-prop 12 356 1

xrdb -merge ~/.Xresources
export $(dbus-launch)
redshift -c ~/.config/redshift/redshift.conf &
exec i3 > ~/i3_log.txt
