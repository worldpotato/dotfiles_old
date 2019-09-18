# dotfiles
My Dotfiles for some apps I use. I use soft-links to bring the files to the right place.

### My system:
Ubuntu 18.04

Kernel: 4.15.0-45-generic x86_64


## commit message template
for a better overview add this template to your git config.
Use:
	```
	git config --local commit.template ./.commit_template.txt
	``` 
in the root folder of this repository to add apply the config only to this repository.

## i3
```
ln -sf [...]/dotfiles/i3/ ~/.config/i3/
```

## polybar
```
ln -sf [...]/dotfiles/polybar ~/.config/polybar
```

## tmux (deprecated)
```
ln -sf [...]/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

## zsh
```
ln -sf [...]/dotfiles/zsh/.zshrc ~/.zshrc
```

## zsh Theme
```
ln -s [...]/dotfiles/zsh/worldpotato.zsh-theme ~/.oh-my-zsh/themes/worldpotato.zsh-theme
```

## zsh tmux_plugin (deprecated)
```
ln -s [...]/dotfiles/zsh/tmux ~/.oh-my-zsh/plugins/tmux
```

## URxvt
```
ln -s [...]/dotfiles/Xresources/.Xdefaults .Xdefaults
```

## xinitrc 
```
ln -s [...]/dotfiles/x11/xinitrc .xinitrc
```

## xmodmap 
```
ln -s [...]/dotfiles/x11/Xmodmap .Xmodmap
```

## vifm 
```
ln -s [...]/dotfiles/vifm .Xmodmap
```

## user bin
```
ln -s [...]/dotfiles/bin bin
```

## compton
```
ln -s [...]/dotfiles/compton ~/.config/compton
```

## synaptics
```
ln -s [...]/dotfiles/synaptics/70-synaptics.conf /etc/x11/xorg.conf.d/70-synaptics.conf
```

