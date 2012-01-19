# Changing directories
setopt AUTO_CD          # Auto change to directories
setopt AUTO_PUSHD       # Automatically pushd
setopt CDABLE_VARS      # Treat non-directories not beginning with / as beginning with ~/
setopt PUSHD_SILENT     # Don’t print stack with pushd or popd
setopt PUSHD_TO_HOME    # Pushd with no args is `pushd $HOME'

# Completion
setopt ALWAYS_TO_END
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
unsetopt LIST_BEEP
unsetopt MENU_COMPLETE

# Expansion / Globbing
setopt EXTENDED_GLOB
setopt NOMATCH

# History
setopt APPEND_HISTORY       # Add history
setopt HIST_IGNORE_ALL_DUPS # Don't allow dupes in history
setopt HIST_REDUCE_BLANKS   # Trim whitespace before adding to history
setopt HIST_VERIFY          # Don’t immediately execute expanded history
setopt INC_APPEND_HISTORY   # Write history incrementally
setopt SHARE_HISTORY        # History is shared across sessions

# Input/Output
setopt CORRECT_ALL

# Job Control
unsetopt BG_NICE      # Don’t nice background jobs
setopt LONG_LIST_JOBS

# Prompting
setopt PROMPT_SUBST # Perform substitution in prompts

unsetopt BEEP
unsetopt NOTIFY

bindkey -e # Emacs key bindings for now

HISTFILE=~/.zsh-histfile
HISTSIZE=2000
SAVEHIST=2000

export PATH="$HOME/bin:/usr/local/bin:$PATH"
