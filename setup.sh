#!/bin/bash
LOCATION=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )

echo "Use commit template for the dotfile repository? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    git config --local commit.template ./.commit_template.txt
    echo "git config set"
    echo "input: $input"
fi 


echo "Create link to i3 config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/i3/ ~/.config/i3
    echo "link created"
fi 

echo "Create link to polybar config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/polybar ~/.config/polybar
    echo "link created"
fi 


echo "Create link to zsh theme and config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/zsh/zshrc ~/.zshrc
    ln -sf $LOCATION/zsh/worldpotato.zsh-theme ~/.oh-my-zsh/themes/worldpotato.zsh-theme
    echo "links created"
fi 

echo "Create link to xdefault/xinitrc/xmodmap? (for urxvt) [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/x11/Xdefaults ~/.Xdefaults
    ln -sf $LOCATION/x11/xinitrc ~/.xinitrc
    ln -sf $LOCATION/x11/Xmodmap ~/.Xmodmap
    echo "links created"
fi

echo "Create link to bin folder (userscripts)? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/bin ~/bin
    echo "link created"
fi 

echo "Create link to vifm? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/vifm ~/.vifm
    echo "link created"
fi 

echo "Create link to compton? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/compton ~/.config/compton
    echo "link created"
fi 

echo "Create link to synaptics config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    sudo ln -sf $LOCATION/synaptics/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
fi 