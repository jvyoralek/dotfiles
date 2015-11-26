#!/bin/sh
# Install php6.5 + Xdebug
brew install homebrew/php/php56
brew install homebrew/php/php56-xdebug

# Install PHPUnit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

# Install Composer
brew install composer
composer self-update