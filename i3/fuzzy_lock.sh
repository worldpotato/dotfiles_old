#!/bin/sh -e
i3lock -i /home/worldpotato/.config/i3/overTheClouds.png

# Turn the screen off after a delay.
sleep 10 pgrep i3lock && xset dpms force off
