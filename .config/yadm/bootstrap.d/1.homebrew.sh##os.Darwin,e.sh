#!/bin/bash

# install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
	echo "Installing homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ -f "$XDG_CONFIG_HOME/homebrew/Brewfile" ]; then
	echo "Updating homebrew bundle"
	brew bundle --file $XDG_CONFIG_HOME/homebrew/Brewfile --verbose
fi
