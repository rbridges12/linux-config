# remap caps lock to escape for vim
setxkbmap -option caps:escape

# turn on tap clicking on mousepad
xinput --set-prop 12 356 1

xrdb -merge ~/.Xresources
redshift -c ~/.config/redshift/redshift.conf &
slstatus &
exec dwm > ~/.dwm.log
