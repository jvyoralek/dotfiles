#!/bin/sh

# Install if we don't have it
if test ! $(which brew); then
	echo "Installing homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

binaries=(
	boot2docker
	docker
	dos2unix
	fish
	git
	midnight-commander
	node
	python
	rename
	wget
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

brew install caskroom/cask/brew-cask
brew tap homebrew/binary
brew tap homebrew/versions
brew tap caskroom/versions

# Apps
apps=(
	1password
	adium
	adobe-photoshop-cc
	adobe-photoshop-lightroom
	adobe-reader
	appcleaner
	atom
	calibre
	dropbox
	evernote
	google-chrome
	intellij-idea-ce
	iterm2
	java
	java6
	java7
	skype
	sourcetree
	spotify
	subtitles
	the-unarchiver
	transmit
	virtualbox
	viscosity
	vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# fish
## add fish to list of shells
sudo bash -c "echo \"/usr/local/bin/fish\" >> /etc/shells"

## change default shell
chsh -s /usr/local/bin/fish
omf install



