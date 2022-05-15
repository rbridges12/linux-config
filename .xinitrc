# remap caps lock to escape for vim
setxkbmap -option caps:escape

xrdb -merge ~/.Xresources
redshift -c ~/.config/redshift/redshift.conf &
slstatus &
exec dwm > ~/.dwm.log
