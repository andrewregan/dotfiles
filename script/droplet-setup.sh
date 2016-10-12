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
sudo apt-get install git curl vim zsh gnupg-curl -y
sudo apt-get install screenfetch -y

# clone dotfiles
git clone https://github.com/jnwarp/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install


# install additional tools
sudo apt-get install ranger htop ufw -y


# done
echo Setup is complete, please log in as the new user!
