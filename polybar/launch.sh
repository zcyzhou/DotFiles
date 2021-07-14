#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar black >>/tmp/polybar1.log 2>&1 & disown
polybar example -r >>/tmp/polybar1.log 2>&1 & disown

# second_monitor=$(xrandr -q | grep 'HDMI-0')
# if [[ $second_monitor = *connected*]]; then
polybar example_sec &
# fi

echo "Bars launched..."
