#!/bin/sh

# Install php6.5 + Xdebug
brew install homebrew/php/php56
brew install homebrew/php/php56-xdebug

# Edit PHP Config: /usr/local/etc/php/5.6/php.ini
# date.timezone = "Europe/Prague"

# Edit fish config edit ~/.config/fish/config.fish
# set -U fish_user_paths $fish_user_paths  /usr/local/sbin (brew --prefix homebrew/php/php56)/bin

# Install PHPUnit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit