[[ -f ~/.cache/p10k-instant-prompt-${(%):-%n}.zsh ]] && source ~/.cache/p10k-instant-prompt-${(%):-%n}.zsh
[[ -f ~/.zprezto/init.zsh ]] && source ~/.zprezto/init.zsh
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

source ~/.dotfiles/.aliases
source ~/.dotfiles/.functions
source /usr/local/etc/profile.d/z.sh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
