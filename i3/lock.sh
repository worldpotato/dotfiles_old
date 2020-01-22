#!/bin/sh -e
i3lock &

# Turn the screen off after a delay.
sleep 2
xset dpms force suspend
