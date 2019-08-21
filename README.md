# Mac
### Clone this repo
```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles
```
### Install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### Install all our dependencies with bundle (See Brewfile)
```
brew update
brew tap homebrew/bundle
brew bundle
```

### Create symlink and restart shell
```
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/.dotfiles/.hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.mackup.cfg ~/.mackup.cfg
```
### Make ZSH the default shell environment
```
chsh -s $(which zsh)
exec ${SHELL} -l
```
### Install SF Mono font for hyper, currently this font is only provided in terminal.app
```
cd /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/
cp *.otf ~/Library/Fonts/
```

# Linux (Debian/Ubuntu)
### Clone this repo
```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles
```
### Install necessary packages
```
sudo apt-get install git curl zsh
sudo mkdir /usr/local/share/antigen
sudo curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh
```
### Set zsh as default shell
```
chsh -s /usr/bin/zsh
```
### Clone this repo, create symlink and restart shell
```
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```
