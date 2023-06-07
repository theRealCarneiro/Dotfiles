#!/bin/sh

active_workspaces () {
	hyprctl monitors -j | jq -Mc 'map({key: (.id | tostring), value: .activeWorkspace.id}) | from_entries'
}

active_workspaces

socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	echo $line | grep -q '^workspace>>' && active_workspaces
done
