fpath=($fpath /usr/local/share/zsh-completions)
fpath=($fpath ~/.dotfiles/zsh/functions)
typeset -U fpath

cdpath=(. .. ~/Code)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
