#!/bin/sh
# xrandr --newmode "1920x1080_60.00"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
# xrandr --addmode Virtual-1 1920x1080_60.00
# xrandr -s 1920x1080_60.00

# Create 1920x1080 resolution mode
xrandr --newmode '1920x1080'  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync

# Add new resolution mode to the display
xrandr --addmode Virtual-1 1920x1080

# Resize the display to use the new resolution mode
xrandr --output Virtual-1 --mode '1920x1080' --rate 60
