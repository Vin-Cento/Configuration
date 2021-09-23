#! /bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar example &

# if [[ $(xrandr -q | grep 'DP2-2 connected') ]]; then
#     polybar external &
# fi
