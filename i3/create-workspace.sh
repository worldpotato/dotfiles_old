#!/bin/bash

i3-msg "workspace zsh; append_layout ~/repos/dotfiles/i3/zsh_workspace.json"

(urxvt -title first -cd /home/worldpotato &)
(urxvt -e "gotop" &)
(urxvt -title clock -e tty-clock -sbcDC 4 -f %d.%m.%Y &)
