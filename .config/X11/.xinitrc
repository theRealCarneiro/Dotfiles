#!/bin/sh

# Source .xprofile
[ -f $XDG_CONFIG_HOME/X11/.xprofile ] && . $XDG_CONFIG_HOME/X11/.xprofile 

# Start WM
exec $WM
