#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# enable fzf search in cmd...
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh
