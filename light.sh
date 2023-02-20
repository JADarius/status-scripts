#!/bin/bash

bright=$(xbacklight -get | cut -d '.' -f 1)
icon=󰛨

echo "$icon $bright%"
