# dotfiles

Constains:
* initialpc.sh  
* phpdev.sh

## General steps to install all necessary tools to new computer: initialpc.sh
Installation steps:
* tools
	* [coreutils](http://en.wikipedia.org/wiki/GNU_Core_Utilities), findutils and Bash
	* [Homebrew](http://brew.sh/) and [Homebrew Cash](http://caskroom.io/)
	* [git](http://git-scm.com)
	* [midnight-commander](https://www.midnight-commander.org/)
	* [node.js](http://nodejs.org) and npm
	* [python](www.python.org)
	* [wget](https://www.gnu.org/software/wget/)
	* boot2docker and docker
	* [dos2unix](http://dos2unix.sourceforge.net/)
	* rename
	* [fish](http://fishshell.com/)
* OSX applications 

## Steps for install PHP interpreter: phpdev.sh
Installation steps for new dev environment:
* PHP 5.6 + XDebug
* PHPUnit
* Composer

### Edit fish Config: ~/.config/fish/config.fish
Add PHP binary path to user path:
```fish
set -U fish_user_paths $fish_user_paths /usr/local/sbin (brew --prefix homebrew/php/php56)/bin
```
### Edit PHP Config: /usr/local/etc/php/5.6/php.ini
Set default timezone:
```ini
[Date]
; Defines the default timezone used by the date functions
; http://php.net/date.timezone
date.timezone = "Europe/Prague"
```