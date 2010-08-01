source ~/.dotfiles/bash/env
source ~/.dotfiles/bash/config
source ~/.dotfiles/bash/aliases
source ~/.dotfiles/bash/git_completion

if [ -s ~/.bashrc.local ]; then source ~/.bashrc.local; fi

# rvm needs to be sourced last
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
