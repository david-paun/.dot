#!/bin/bash

echo "Installing packages:"
sudo pacman -S dunst i3 kitty polybar rofi

echo "Moving dot files to the home folder:"
mv .dots ~/

echo "Creating symlinks: \n WARNING: Might require manual intervention for some users!"
ln -s ~/.dot/dunst ~/.config
ln -s ~/.dot/i3 ~/.config
ln -s ~/.dot/kitty ~/.config
ln -s ~/.dot/polybar ~/.config
ln -s ~/.dot/rofi ~/.config
ln -s ~/.dot/.bash_profile ~/
ln -s ~/.dot/.bashrc ~/
ln -s ~/.dot/.xinitrc ~/
