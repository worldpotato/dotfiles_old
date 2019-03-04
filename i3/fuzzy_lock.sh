#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

convert -scale 10% -scale 1000% /tmp/screen_locked.png /tmp/screen_locked.png

# blur image
#convert -blur 0x05 /tmp/screen_locked.png /tmp/screen_locked.png
#rm /tmp/locking_screen.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
