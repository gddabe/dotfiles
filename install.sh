#!/bin/sh

if [ ! -f $(which brew) ]; then
	echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing bundles..."
brew bundle install

echo "Installing fzf integration..."
$(brew --prefix)/opt/fzf/install

if [ ! -d ${ZDOTDIR:-$HOME}/.zprezto ]; then
	echo "Installing prezto..."
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
