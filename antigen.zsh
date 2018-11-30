source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
antigen bundle heroku
antigen bundle command-not-found
antigen bundle z
antigen bundle brew
antigen bundle npm
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Syntax highlighting bundle.
# these should be at last!
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Tell antigen that you're done.
antigen apply
