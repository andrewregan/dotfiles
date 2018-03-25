#!/bin/bash

# install i3wm
sudo apt install i3 i3blocks

# install i3lock
sudo cp ~/.dotfiles/i3lock-fancy/lock /usr/local/bin
sudo cp ~/.dotfiles/i3lock-fancy/icons /usr/local/bin/icons -r

# make backlight writable
sudo chmod a+rw/sys/class/backlight/intel_backlight/brightness
