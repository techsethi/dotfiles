source ~/.dotfiles/zsh/config.sh
source ~/.dotfiles/zsh/aws.sh
source ~/.dotfiles/zsh/prompt.sh
source ~/.dotfiles/zsh/completion.sh
source ~/.dotfiles/zsh/aliases.sh
source ~/.dotfiles/zsh/functions.sh

# Aliases common to zsh and bash
for file in ~/.dotfiles/aliases/*.sh; do
  [[ -r $file ]] && source $file;
done

[[ -r "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
__rvm_project_rvmrc
