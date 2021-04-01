#!/bin/sh

# Source .xprofile
[ -f $XDG_CONFIG_HOME/X11/.xprofile ] && . $XDG_CONFIG_HOME/X11/.xprofile 

# Start WM
if [ $WM = "dwm" ]; then
	while type dwm >/dev/null ; do dwm && continue || break ; done
else
	exec $WM
fi
