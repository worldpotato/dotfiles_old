#!/bin/sh -e
i3lock -nefi /home/worldpotato/.config/i3/overTheClouds.png &

# Turn the screen off after a delay.
sleep 2
xset dpms force suspend
