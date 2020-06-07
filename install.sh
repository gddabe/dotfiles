#!/bin/sh

echo "Setting up your Mac..."

# Install homebrew
echo "Installing homebrew..."
if [ ! -f $(which brew) ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
echo "Updating homebrew..."
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Installing bundles..."
brew tap homebrew/bundle
brew bundle

# Create links
echo "Creating essential file links..."
# Create symlink and restart shell
if [ -d ~/.hammerspoon ]; then
	rm -rf ~/.hammerspoon
fi
ln -s ~/.dotfiles/hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Get pubkey from github
echo "Getting pubkey from github..."
mkdir -p ~/.ssh
# if id_rsa.pub doesn't exist
if [ ! -f ~/.ssh/id_rsa.pub ]; then
    curl https://github.com/gddabe.keys | tee -a ~/.ssh/id_rsa.pub
fi

# Dock cleanup
echo "Reseting the dock..."
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Hyper.app"

killall Dock

# Make ZSH the default shell environment
echo "Making zsh the default shell..."
chsh -s $(which zsh)
exec ${SHELL} -l
