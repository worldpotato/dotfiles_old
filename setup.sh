#!/bin/bash
LOCATION=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )

echo "use commit template for the dotfile repository? [y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "n" ];
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


echo "Create link to zsh custom folder? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/zsh/zshrc ~/.zshrc
    ln -sf $LOCATION/zsh/custom ~/.oh-my-zsh/custom
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


echo "Create link to picom? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -sf $LOCATION/picom ~/.config/picom
    echo "link created"
fi


echo "Create link to synaptics config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    sudo ln -sf $LOCATION/x11/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
    echo "link created"
fi


echo "Create link to zathura config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -s $LOCATION/zathura ~/.config/zathura
    echo "link created"
fi


echo "Create link to qutebrowser config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -s $LOCATION/qutebrowser ~/.config/qutebrowser
    echo "link created"
fi


echo "Create link to alacritty config? [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -s $LOCATION/alacritty ~/.config/alacritty
    echo "link created"
fi


echo "Create link to vimrc [Y/n]"
read input

if [ "$input" = "n" ] || [ "$input" = "N" ];
then
    cowsay "...ok..."
else
    ln -s $LOCATION/vim/vimrc ~/.vimrc
    echo "link created"
fi

