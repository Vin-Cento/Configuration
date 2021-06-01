#!/bin/bash
WallpaperPath="Pictures/Wallpapers"

# increase keyboard speed
xset r rate 250 40

# swape cap and esc keys
xmodmap -e 'clear Lock'
setxkbmap -option caps:swapescape

# set up wallpaper
xwallpaper --center $WallpaperPath/rainlady.jpeg
