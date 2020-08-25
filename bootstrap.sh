#!/bin/sh
# Get pubkey from github
echo "Getting pubkey from github..."
mkdir -p ~/.ssh
# if id_rsa.pub doesn't exist
if [ ! -f ~/.ssh/id_rsa.pub ]; then
    curl https://github.com/gddabe.keys | tee -a ~/.ssh/id_rsa.pub
fi

# Dock cleanup
echo "Cleaning up the dock..."
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Hyper.app"

killall Dock

# Create symlinks
ln -sf ~/.dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js

# Make ZSH the default shell environment
echo "Making zsh the default shell..."
chsh -s $(which zsh)
exec ${SHELL} -l
