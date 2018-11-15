export DOT=~/.dotfiles-antigen

export PATH="$DOT/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"

source $DOT/antigen.zsh
source $DOT/functions.zsh
source $DOT/aliases.zsh
source $DOT/history.zsh
source $DOT/assets/z.sh
