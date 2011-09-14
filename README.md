# What

Various dotfiles to make my life easier.

## Before installing

If you have local copies of any of these files and want to keep their contents, move them somewhere else. The installer is agressive and doesn’t ask questions.

# Installation

Clone this repository to ~/.dotfiles.

    git clone git://github.com/grillpanda/dotfiles.git ~/.dotfiles

Run the install task and reload your bash profile.

    cd ~/.dotfiles
    rake dotfiles:install
    source ~/.bashrc

# Local user configuration

The bashrc file included here will load ~/.bashrc.local if it can be found. You can use this for any further bash configuration you need.
