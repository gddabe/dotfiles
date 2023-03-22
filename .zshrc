fpath+=("$(brew --prefix)/share/zsh/site-functions")
export PATH="/usr/local/opt/python@3.10/libexec/bin:$PATH"

## For nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

autoload -U promptinit; promptinit
prompt pure

source $(brew --prefix)/etc/profile.d/z.sh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.dotfiles/.aliases
source ~/.dotfiles/.functions
