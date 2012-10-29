# All options specified with setopt/unsetopt can be found in `man zshoptions`

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"

# Edit with Vim
export EDITOR='vim -Nf'
export GIT_EDITOR='vim -Nf'

# Prompt
setopt prompt_subst

# Colour
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

export CLICOLOR=1
export LSCOLORS='gxfxcxdxdxegedabagacad'

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# Completion
autoload -U compinit
compinit

setopt always_to_end
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_remove_slash
setopt list_ambiguous
setopt list_types
unsetopt list_beep

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # case insensitive completion for cd etc *N*

# History
setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups

export HISTSIZE=100000
export HISTFILE=~/.histfile
export SAVEHIST=$HISTSIZE

# Changing Directories
setopt auto_cd
setopt cdable_vars
setopt chase_links

# Expansion & Globbing
unsetopt case_glob
setopt extended_glob
setopt glob
setopt mark_dirs

# Input / Output
setopt correct
setopt correct_all

bindkey '^R' history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Jobs
setopt long_list_jobs

# Rbenv
which rbenv > /dev/null && {
  eval "$(rbenv init -)"
}

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Theme
source $HOME/.dotfiles/zsh/theme.sh

# Aliases
source $HOME/.dotfiles/aliases.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
