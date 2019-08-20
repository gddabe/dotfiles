#!/bin/sh

echo "Setting up your Mac..."

# Install homebrew
if test ! $(which brew); then
	echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
echo "Updating brew..."
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Installing bundles..."
brew tap homebrew/bundle
brew bundle

# Create symlink and restart shell
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/.dotfiles/.hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.mackup.cfg ~/.mackup.cfg

# Make ZSH the default shell environment
echo "Making zsh the default shell..."
chsh -s $(which zsh)
exec ${SHELL} -l

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
