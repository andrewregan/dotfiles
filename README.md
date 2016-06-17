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
sudo apt-get update; sudo apt-get install git curl vim zsh screenfetch gnupg-curl

# clone repository
git clone https://github.com/andrewregan/dotfiles ~/.dotfiles

# dotbot install
~/.dotfiles/install
```

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

[dotbot]: https://github.com/anishathalye/dotbot
