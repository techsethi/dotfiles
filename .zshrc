# Allow prompt substitution
setopt PROMPT_SUBST

# These can all be found in `man zshoptions`

# Changing Directories
setopt AUTO_CD
setopt CDABLE_VARS

# Completion
setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_MENU
setopt AUTO_PARAM_KEYS
setopt AUTO_REMOVE_SLASH
setopt LIST_AMBIGUOUS
setopt LIST_TYPES
unsetopt LIST_BEEP

# Expansion & Globbing
setopt EXTENDED_GLOB
setopt GLOB
setopt MARK_DIRS

# History
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS

# Input / Output
setopt CORRECT
setopt CORRECT_ALL

# Jobs
setopt LONG_LIST_JOBS


# Load prompt system
autoload -U promptinit
promptinit

# Load completion system
autoload -U compinit
compinit

# History options
HISTSIZE=100000
HISTFILE=~/.histfile
SAVEHIST=$HISTSIZE

# Vi keybindings
bindkey -v
