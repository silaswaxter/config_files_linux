#!/bin/sh
# This script configures my displays for when there is my 
# 4K Acer widescreen to the left of my laptop

# The ammount ot scale eDP-1 display
SCALE_FLOAT="0.8"
SCALE_PERCENT="80"

PACWALL_IMG="/home/silas/.cache/pacwall/pacwall.png"
PACWALL_SCALED_IMG="/home/silas/.cache/pacwall/pacwall_scaled.png"

# Configure each display
xrandr 	--output eDP1 --mode 1920x1080 --pos 2560x900 --rotate normal --scale ${SCALE_FLOAT}x${SCALE_FLOAT} \
	--output HDMI2 --mode 2560x1440 --pos 0x0 --rotate normal --primary --rate 59.97

# Set the Wallpaper
convert ${PACWALL_IMG} -scale ${SCALE_PERCENT}% ${PACWALL_SCALED_IMG} && \
feh 	--image-bg=#282828 \
	--bg-center $PACWALL_IMG \
       	--bg-center $PACWALL_SCALED_IMG &
