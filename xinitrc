#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

userresources=$HOME/.Xresources usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi



[ -f ~/.config/lf/LF_ICONS ] && {
	LF_ICONS="$(tr '\n' ':' <~/.config/lf/LF_ICONS)" && export LF_ICONS
}

WallpaperPath="Pictures/Wallpapers"

export LS_COLORS="$(vivid generate ~/.config/vivid/tokyo.yml)"

# increase keyboard speed
xset r rate 850 90
xmodmap -e 'clear Lock'
setxkbmap -option caps:swapescape

# set up wallpaper
xwallpaper --zoom $WallpaperPath/peacefulpic.jpg
pgrep -x sxhkd > /dev/null || sxhkd &
unclutter &
picom --experimental-backends &
~/.config/polybar/launch.sh --hack

redshift -l 32.363724:-90.891266 &
fcitx -d & 

exec bspwm
