#!/bin/bash

# disable root - AFTER LOGIN!
if [ $EUID == 0 ]; then
  echo Root account not disabled.
  echo Please run this script as a regular user!
  exit
else
  sudo passwd -l root
  sudo bash -c "echo > /root/.ssh/authorized_keys"
  echo Root account disabled!
fi

# install tools
sudo dnf update
sudo dnf upgrade -y
sudo dnf install git curl vim zsh -y

# install additional tools
sudo dnf install epel-release -y
sudo dnf update -y
sudo dnf install htop -y
sudo dnf install neofetch -y

# install system changing items
sudo dnf install fail2ban -y

# clone dotfiles
git clone https://github.com/jnwarp/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install

# done
echo Setup is complete, please log in as the new user and run the commands below!
echo '~/.dotfiles/install; ssh-keygen -t rsa -b 4096 -C "james@jnwarp.com `hostname`"; cat ~/.ssh/id_rsa.pub'
