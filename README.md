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
#### Install goodies
```
brew cask install google-chrome dropbox
```
