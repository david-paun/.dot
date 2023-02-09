#!/bin/bash

#echo "Installing packages:"
#sudo pacman -S dunst i3 kitty polybar rofi

echo "Copying dot files to the home folder:"
#cp -r ../.dot ~/
mv ../.dot ~/

echo "Creating symlinks: \n WARNING: Might require manual intervention for some users!"
ln -sf ~/.dot/dunst ~/.config/
ln -sf ~/.dot/i3 ~/.config/
ln -sf ~/.dot/kitty ~/.config/
ln -sf ~/.dot/polybar ~/.config/
ln -sf ~/.dot/rofi ~/.config/
ln -sf ~/.dot/system-dots/.bash_profile ~/
ln -sf ~/.dot/system-dots/.bashrc ~/
ln -sf ~/.dot/system-dots/.xinitrc ~/
ln -sf ~/.dot/flameshot ~/.config/
sudo ln -sf ~/.dot/system-dots/00-keyboard.conf /etc/X11/xorg.conf.d/
sudo ln -sf ~/.dot/system-dots/30-touchpad.conf /etc/X11/xorg.conf.d/
ln -sf ~/.dot/geany/colorschemes ~/.config/geany/
#rm -rf /path/to/A
