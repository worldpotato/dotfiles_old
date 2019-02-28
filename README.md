# dotfiles
My Dotfiles for some apps I use. I use soft-links to bring the files to the right place.


## commit message template
for a better overview add this template to your git config.
Use:
	git config --local commit.template ./.commit_template.txt

in the root folder of this repository to add apply the config only to this repository.

## i3

ln -sf [...]/dotfiles/i3/ ~/.config/i3/

## tmux

ln -sf [...]/dotfiles/tmux/.tmux.conf ~/.tmux.conf

## zsh

ln -sf [...]/dotfiles/zsh/.zshrc ~/.zshrc
