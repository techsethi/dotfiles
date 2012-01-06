source ~/.dotfiles/zsh/config.sh
source ~/.dotfiles/zsh/prompt.sh
source ~/.dotfiles/zsh/completion.sh
source ~/.dotfiles/zsh/aliases.sh

# Aliases common to zsh and bash
for file in ~/.dotfiles/aliases/*.sh; do
  [[ -r $file ]] && source $file;
done

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
__rvm_project_rvmrc
