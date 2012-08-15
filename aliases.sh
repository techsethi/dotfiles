# Git
alias gadd='git add -u && git add . && git status'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gitc='git commit -m'
alias gl='git log'
alias gpl='git pull --rebase && git submodule update --init --recursive'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'
alias gst='git status'
alias gsu='git submodule update --init --recursive'

# Vim > MacVim
which mvim > /dev/null && {
  alias vim='mvim -v'
}

# Ruby
alias ri='ri -Tf ansi'

# Bundler
alias be='bundle exec'
alias biv='bundle install --without production --path vendor/gems'
alias bl='bundle list'

# Less defaults
alias less='less -isR'
alias rspec='nocorrect rspec'

# Miscellaneous rubbish
alias c=clear
alias h=history
alias la='ls -lA'
alias ll='ls -l'
