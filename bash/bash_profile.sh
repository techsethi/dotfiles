export PATH="~/bin:/usr/local/bin:$PATH"
export CDPATH=".:..:~:~/_/songkick:~/Ark/Code"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

for file in ~/.dotfiles/bash/includes/*.sh; do
  [[ -r $file ]] && source $file;
done

if [ -s "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [ -s ~/.bash_profile.local ]; then source ~/.bash_profile.local; fi
