#!/bin/bash

# disable root - AFTER LOGIN!
if [ $EUID == 0 ]; then
  echo Root account not disabled.
  echo Please run this script as a regular user!
  exit
else
  sudo passwd -l root
  echo Root account disabled!
fi


# install tools
sudo apt-get update
sudo apt-get install git curl vim zsh screenfetch gnupg-curl

# clone dotfiles
git clone https://github.com/andrewregan/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install


# install additional tools
sudo apt-get install ranger htop ufw


# done
echo Setup is complete, please log in as the new user!
