#!/bin/sh
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Source .xprofile
[ -f $XDG_CONFIG_HOME/X11/.xprofile ] && . $XDG_CONFIG_HOME/X11/.xprofile 

# Start WM
exec $WM
