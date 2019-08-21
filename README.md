> This is what my terminal looks like. It is sleek, minimal and fast.

![image](https://user-images.githubusercontent.com/3678065/63402938-d0507c80-c40f-11e9-837e-aaf6978dd2b4.png)

<!-- The core components are
- Prompt - [Pure](https://github.com/sindresorhus/pure)
- Terminal - [Hyper](https://github.com/zeit/hyper)
- Color scheme - [Solarized](https://ethanschoonover.com/solarized/) -->

# Installation

## Clone this repo and run install script

```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles && cd ~/.dotfiles

chmod a+x install.sh
./install.sh
```
## Things it does
#### Install homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Install all our dependencies with bundle (See Brewfile)

```
brew update
brew tap homebrew/bundle
brew bundle
```

#### Create symlink and restart shell

```
ln -sf ~/.dotfiles/hammerspoon ~/.hammerspoon
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/.dotfiles/.mackup.cfg ~/.mackup.cfg
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
```

#### Make ZSH the default shell environment

```
chsh -s $(which zsh)
exec ${SHELL} -l
```

> (optional) Install SF Mono font for hyper, currently this font is only provided in terminal.app

```
cp /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts/
```

# Installation for Linux (Debian/Ubuntu)

## Clone this repo

```
git clone https://github.com/gddabe/dotfiles.git ~/.dotfiles
```

#### Install necessary packages

```
sudo apt-get install git curl zsh
sudo mkdir /usr/local/share/antigen
sudo curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh
```

#### Create symlink and restart shell

```
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```

#### Make ZSH the default shell environment

```
chsh -s /usr/bin/zsh
```
