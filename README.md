Dotfiles
========

This is my dotfiles repository that contains configuration files for my linux
systems.  Since this is to be used by myself, there may be hardcoded strings,
so this repo probably shouldn't be used by you without modification.

If you decide to use this as a dotfiles template, then keep in mind that
***this repo installs ssh keys*** onto the system!  Before using it, make
sure to change the `src/ssh/authorized_keys` file, or you could be inadvertently
***giving my computers access to your system!***

This repository uses [Dotbot][dotbot], if you want to set up your own dotfiles,
then I recommend forking that repository.


Install
-------

Before installing this onto your system *see warnings above!*

```bash
# before installing
sudo apt-get update; sudo apt-get install git curl vim zsh screenfetch -y

# clone repository
git clone https://github.com/jnwarp/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install

# set up ssh key
ssh-keygen -t rsa -b 4096 -C "james@jnwarp.com `hostname`"
```

Extra goodies
```bash
sudo apt-get install breeze-cursor-theme numix-icon-theme arc-theme preload -y
```

Vmware goodies
```bash
sudo apt-get install open-vm-tools open-vm-tools-desktop -y
```


Quick Install
-------------

### Ubuntu

```bash
# add new user
adduser james; gpasswd -a james sudo; su james

# quick setup
curl -s https://raw.githubusercontent.com/jnwarp/dotfiles/master/script/droplet-setup.sh | bash
```

### CentOS

```bash
# add new user
adduser james; gpasswd -a james wheel; su james

# quick setup
curl -s https://raw.githubusercontent.com/jnwarp/dotfiles/master/script/centos-setup.sh | bash
```

### Windows 10
```batch
# disable terminal bell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
if (!(Test-Path -Path "$Profile")) {New-Item -ItemType File -Path "$Profile" -Force}
Add-Content -Value "Set-PSReadlineOption -BellStyle None" -Path "$Profile"
```

XFCE Settings
-------------

```bash
# menu: xfce4-popup-whiskermenu
```

Update Dotbot
-------------

```bash
git submodule update --remote
```

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

[dotbot]: https://github.com/anishathalye/dotbot
