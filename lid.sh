#!/bin/bash
# Lid handler

xrandr | grep -q "HDMI-A-0 connected"
connected_flag="$?"

if ! grep -q close /proc/acpi/button/lid/LID/state; then
	if [ $connected_flag -eq "0" ]; then
		autorandr -l mirror-big
	else
		autorandr -l edp-only
	fi

	exit 0
fi

if [ $connected_flag -eq "0" ]; then
	autorandr -l hdmi-only
else
	i3lock -c 000000 && systemctl suspend
fi
