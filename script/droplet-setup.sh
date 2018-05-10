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
for i in git curl vim zsh screenfetch; do
  sudo apt-get install $i -y
done

# install additional tools
for i in ranger htop; do
  sudo apt-get install $i -y
done

# install system changing items
for i in preload fail2ban; do
  sudo apt-get install $i -y
done

# clone dotfiles
git clone https://github.com/jnwarp/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install

# done
echo Setup is complete, please log in as the new user!
