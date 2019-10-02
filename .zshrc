export DOT=~/.dotfiles

# export PATH="$DOT/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/Cellar/node/12.10.0/bin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source $DOT/zsh/antigen.zsh
source $DOT/zsh/functions.zsh
source $DOT/zsh/aliases.zsh
source $DOT/zsh/history.zsh
