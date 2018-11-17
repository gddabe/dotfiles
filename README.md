#### Install Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
#### Install useful packages
```
brew install git zsh coreutils antigen
```
#### Change to zsh
```
sudo sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh
```
#### Create symlink and restart shell
```
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

#### Linux
```
curl -L git.io/antigen > antigen.zsh
```
