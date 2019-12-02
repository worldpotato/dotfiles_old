#!/bin/bash

i3-msg "workspace zsh; append_layout ~/repos/dotfiles/i3/zsh_workspace.json"

alacritty --title=first --working-directory /home/worldpotato/ &
alacritty --title=gotop -e /usr/bin/gotop &
alacritty --title=clock -e /usr/bin/tty-clock -sbcDC 4 -f %d.%m.%Y &
