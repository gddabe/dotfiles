# eval "$(starship init zsh)"
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

source /opt/homebrew/etc/profile.d/z.sh
source ~/.dotfiles/.aliases
source ~/.dotfiles/.functions
