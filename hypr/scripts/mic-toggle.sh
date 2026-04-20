#!/bin/bash
pactl set-source-mute @DEFAULT_SOURCE@ toggle
STATE=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
if [ "$STATE" = "yes" ]; then
	notify-send -i microphone-sensitivity-muted "Mic Muted"
else 
	notify-send -i microphone-sensitivity-high "Mic Active"
fi
