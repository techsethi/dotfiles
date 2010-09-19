source ~/.dotfiles/bash/env
source ~/.dotfiles/bash/config
source ~/.dotfiles/bash/aliases
source ~/.dotfiles/bash/git_completion

if [ -s ~/.bashrc.local ]; then source ~/.bashrc.local; fi

# rvm needs to be sourced last
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
