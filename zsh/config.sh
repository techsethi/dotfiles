HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt AUTO_CD
unsetopt LIST_BEEP

setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
unsetopt MENU_COMPLETE

setopt APPEND_HISTORY                 # add history
setopt INC_APPEND_HISTORY             # write history incrementally
setopt SHARE_HISTORY                  # history is shared across sessions
setopt HIST_IGNORE_ALL_DUPS           # don't allow dupes in history
setopt HIST_REDUCE_BLANKS             # trim whitespace before adding to history
