#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                  # dotfiles directory
olddir=~/.dotfiles_old           # old dotfiles backup directory

# list of files/folders to symlink in homedir
# TODO: Please make this look nicer...
files="vimrc vim zshrc gitconfig tmux.conf ctags.d ideavimrc Xresources Xmodmap Xresources.d newsboat urlview xbindkeysrc xinitrc"

dotConfigFiles="nvim tmux.conf.d karabiner gitignore_global i3 rofi polybar ranger fontconfig dunst gtk-3.0 termite scripts mpv feh surfraw"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir/
    if [ ! -e ~/.$file ]; then
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
    fi
done

mkdir -p ~/.config/
for file in $dotConfigFiles; do
    if [ ! -e ~/.config/$file ]; then
        echo "Creating symlink to $file in .config/."
        ln -s $dir/$file ~/.config/$file
    fi
done

