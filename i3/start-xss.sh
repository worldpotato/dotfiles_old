#!/bin/bash

xset s 300
# let xss-lock listen to 'loginctl lock-session'
xss-lock --transfer-sleep-lock -- /home/worldpotato/repos/dotfiles/i3/lock.sh --no-fork &
