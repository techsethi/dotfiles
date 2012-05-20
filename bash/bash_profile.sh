export PATH="~/bin:/usr/local/bin:$PATH"
export CDPATH=".:..:~:~/_/songkick:~/Ark/Code"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

for file in ~/.dotfiles/bash/includes/*.sh; do
  [[ -r $file ]] && source $file;
done

eval "$(rbenv init -)"

if [ -s ~/.bash_profile.local ]; then source ~/.bash_profile.local; fi
