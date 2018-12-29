## Mac
#### Install Homebrew and necessary packages
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git zsh coreutils antigen
```
#### Set zsh as default shell
```
sudo sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh
```
#### Clone this repo, create symlink and restart shell
```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles
cd ~
ln -s ~/.dotfiles/.zshrc .zshrc
ln -s ~/.dotfiles/.gitignore .gitignore
ln -s ~/.dotfiles/.gitconfig .gitconfig
ln -s ~/.dotfiles/.editorconfig .editorconfig
ln -s ~/.dotfiles/.hyper.js .hyper.js
ln -s ~/.dotfiles/.hammerspoon .hammerspoon
source ~/.zshrc
```
#### Install goodies
```
brew cask install google-chrome dropbox karabiner-elements hyper hammerspoon
```
#### Install SF Mono font for hyper, currently this font is only provided in terminal.app
```
cd /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/
cp *.otf ~/Library/Fonts/
```
## Linux (Debian/Ubuntu)
#### Install necessary packages
```
sudo apt-get install git curl zsh
sudo mkdir /usr/local/share/antigen
sudo curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh
```
#### Set zsh as default shell
```
chsh -s /usr/bin/zsh
```
#### Clone this repo, create symlink and restart shell
```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles
cd ~
ln -s ~/.dotfiles/.zshrc .zshrc
source ~/.zshrc
```
