#!/bin/bash

i3-msg "workspace zsh; append_layout ~/repos/dotfiles/i3/zsh_workspace.json"

(termite --title=first -d /home/worldpotato &)
(termite -e "gotop -r 0.5" &)
(termite --title=clock -e "tty-clock -sbcDC 4 -f %d.%m.%Y" &)
