# Installation

#### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Clone dotfiles

```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

#### Brewfiles

```
brew bundle install
```

#### iterm2

```
# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```

### zsh

```
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
```

### ssh

- copy all files in .ssh folder from old machine to new machine

#### Bitwarden

> install app store version to allow bio browser integration
> setting

- unlock with touch id
- allow browser integration
- allow duckduckgo browser integration

browser

- In your Browser, navigate to the extensions manager (e.g. chrome://extensions or brave://extensions), open Bitwarden, and toggle the Allow access to file URLs option.
- In your browser extension, open the  Settings tab
- Scroll down to the security section and check the Unlock with biometrics box.

### Brave

- go to brave://settings/shields/filters and type `cookie`
- check EasyList-Cookie List to disable cookie questions
