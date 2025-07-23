#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d":" -f1); do
        MONITOR=$m polybar --reload bar &
    done
else
    polybar --reload bar &
fi

# Launch bar
# echo "---" | tee -a /tmp/polybar.log
# polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
# echo "Bar launched..."
