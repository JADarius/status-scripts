#!/bin/bash

battery=$(cat /sys/class/power_supply/CMB1/capacity)
stat=$(cat /sys/class/power_supply/CMB1/status)
          

if [ "$battery" == "100" ]; then
	icon=
elif [ "$battery" -gt "90" ]; then
	icon=
elif [ "$battery" -gt "80" ]; then
	icon=
elif [ "$battery" -gt "70" ]; then
	icon=
elif [ "$battery" -gt "60" ]; then
	icon=
elif [ "$battery" -gt "50" ]; then
	icon=
elif [ "$battery" -gt "40" ]; then
	icon=
elif [ "$battery" -gt "30" ]; then
	icon=
elif [ "$battery" -gt "20" ]; then
	icon=
elif [ "$battery" -gt "10" ]; then
	icon=
else
	icon=
fi

if [ "$stat" == "Charging" ]; then
	icon=
fi

echo "[33m$icon $battery%[0m"
