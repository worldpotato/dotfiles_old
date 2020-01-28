#!/bin/bash

i3-msg "workspace zsh; append_layout ~/repos/dotfiles/i3/workspace-clean.json"

termite --title=first --directory=/home/worldpotato/ &
termite --title=gotop -e /usr/bin/gotop &
termite --title=clock -e "/usr/bin/tty-clock -sbcDC2 -f %d.%m.%Y" &

i3-msg restart
