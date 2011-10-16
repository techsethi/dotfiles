for file in ~/.dotfiles/bash/includes/*.sh; do
  [[ -r $file ]] && source $file;
done

for file in ~/.dotfiles/bash/includes/aliases/*.sh; do
  [[ -r $file ]] && source $file;
done

if [ -s ~/.bashrc.local ]; then source ~/.bashrc.local; fi
