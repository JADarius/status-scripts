#!/bin/bash

volume=$(pulsemixer --get-volume | cut -d ' ' -f 1)
mute=$(pulsemixer --get-mute)

if [ "$mute" == "1" ]; then
	icon=󰸈
else
	icon=󰕾
fi

if [ "$volume" == "0" ]; then
	icon=󰸈
fi
echo "[32m$icon $volume%[0m"
