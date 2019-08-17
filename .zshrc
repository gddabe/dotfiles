export DOT=~/.dotfiles

# export PATH="$DOT/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source $DOT/antigen.zsh
source $DOT/functions.zsh
source $DOT/aliases.zsh
source $DOT/history.zsh
