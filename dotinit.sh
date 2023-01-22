#!/bin/bash

#echo "Installing packages:"
#sudo pacman -S dunst i3 kitty polybar rofi

echo "Copying dot files to the home folder:"
#cp -r ../.dot ~/
mv ../.dot ~/

echo "Creating symlinks: \n WARNING: Might require manual intervention for some users!"
ln -s ~/.dot/dunst ~/.config/
ln -s ~/.dot/i3 ~/.config/
ln -s ~/.dot/kitty ~/.config/
ln -s ~/.dot/polybar ~/.config/
ln -s ~/.dot/rofi ~/.config/
ln -s ~/.dot/home-dots/.bash_profile ~/
ln -s ~/.dot/home-dots/.bashrc ~/
ln -s ~/.dot/home-dots/.xinitrc ~/
ln -s ~/.dot/flameshot ~/.config/

