export PATH="~/bin:/usr/local/bin:$PATH"
export CDPATH=".:..:~:~/_/songkick:~/Ark/Code"

# bash completion for homebrew if we have it
which brew > /dev/null && {
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
}

which rbenv > /dev/null && {
  eval "$(rbenv init -)"
}

for file in ~/.dotfiles/bash/includes/*.sh; do
  [[ -r $file ]] && source $file;
done

if [ -s ~/.bash_profile.local ]; then source ~/.bash_profile.local; fi
