#!/bin/sh

hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name'

socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - |
	stdbuf -o0 awk -F '>>|,' -e '/^focusedmon>>/ {print $2}'
