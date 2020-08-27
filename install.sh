#!/bin/sh

if [ ! -f $(which brew) ]; then
	echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing bundles..."
brew bundle install

echo "Installing fzf integration..."
yes | $(brew --prefix)/opt/fzf/install

if [ ! -d ${ZDOTDIR:-$HOME}/.zprezto ]; then
	echo "Installing prezto..."
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

echo "Getting pubkey from github..."
mkdir -p ~/.ssh
# if id_rsa.pub doesn't exist
if [ ! -f ~/.ssh/id_rsa.pub ]; then
    curl https://github.com/gddabe.keys | tee -a ~/.ssh/id_rsa.pub
fi

echo "Cleaning up the dock..."
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Hyper.app"

killall Dock

ln -sf ~/.dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
ln ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

echo "Making zsh the default shell..."
chsh -s $(which zsh)
exec ${SHELL} -l
