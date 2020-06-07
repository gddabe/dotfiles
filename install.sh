#!/bin/sh

echo "Setting up your Mac..."

# Install homebrew
echo "Installing homebrew..."
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
echo "Updating brew..."
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Installing bundles..."
brew tap homebrew/bundle
brew bundle

echo "Creating essential file links..."
# Create symlink and restart shell
if [ ! -f ~/.hammerspoon ]
then
	rm -rf ~/.hammerspoon
fi
ln -s ~/.dotfiles/hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
#ln -sf ~/.dotfiles/.mackup.cfg ~/.mackup.cfg
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

# Dock cleanup
echo "Reseting the dock..."
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Hyper.app"

echo "Getting pubkey from github..."
mkdir -p ~/.ssh
curl https://github.com/gddabe.keys | tee -a ~/.ssh/id_rsa.pub

killall Dock

# Make ZSH the default shell environment
echo "Making zsh the default shell..."
chsh -s $(which zsh)
exec ${SHELL} -l
