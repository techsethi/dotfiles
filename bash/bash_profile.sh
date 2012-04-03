export PATH="/usr/local/bin:$PATH"

for file in ~/.dotfiles/bash/includes/*.sh; do
  [[ -r $file ]] && source $file;
done

for file in ~/.dotfiles/aliases/*.sh; do
  [[ -r $file ]] && source $file;
done

if [ -s ~/.bash_profile.local ]; then source ~/.bash_profile.local; fi
