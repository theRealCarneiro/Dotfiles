#!/bin/sh

monitor_id=$1
monitor_name=$(hyprctl monitors -j | jq -r ".[] | select(.id==$(( $monitor_id - 1 ))) | .name")
monitors=$(hyprctl monitors -j | jq "map({key: .name , value: .id | tostring}) | from_entries")

start=1
end=30

spaces (){
	WORKSPACE_WINDOWS=$(hyprctl workspaces -j | jq "map(select(.id > 0)) | map({key: .id | tostring, value: .windows}) | from_entries")
	seq $start $end | jq --argjson windows "$WORKSPACE_WINDOWS" --argjson monitors "$monitors" -s --slurp -Mc \
		'map(tostring) | map({id: ., windows: ($windows[.]//0), monitor: (if (. | tonumber) <= 10 then $monitors["DVI-D-1"] elif (. | tonumber) <= 20 then $monitors["HDMI-A-1"] else $monitors["DP-1"] end)})'
}

spaces
socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	spaces
done
