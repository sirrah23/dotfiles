# Get started easily

Make sure you have stow installed on your system.

In order to use stow to put a dotfile from this directory
into a target directory you can do a command like:

    stow -t <target> <dotfile>

So for example if you want to unpack the vim config files to your home
directory you can do:

    stow -t ~ vim

from inside of the directory that contains the vim folder.

If you want to unpack dotfiles to your home directory then just use the
runstow script:

    ./runstow vim
