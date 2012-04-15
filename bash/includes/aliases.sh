alias ios='open "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app"'

alias git='hub'
alias gadd='git add -u && git add . && git status'
alias gam='git commit --amend -CHEAD'
alias gap='git add -p'
alias gb='git branch'
alias gca='git commit --all'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gitc='git commit -m'
alias gl='git log'
alias gpl='git pull --rebase && git submodule update --init --recursive'
alias grd='git ls-files --deleted | xargs git rm'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'
alias gst='git status'
alias gsu='git submodule update --init --recursive'

alias ri='ri -Tf ansi'
alias spec='spec -f n -c'

alias be='bundle exec'
alias biv='bundle install --without production --path vendor/gems'
alias bl='bundle list'

# Postgresql
alias pstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias c=clear
alias h=history
alias la='ls -lA'
alias ll='ls -l'
alias ..='cd ..'
alias less='less -isR'
alias vim='mvim -v'
