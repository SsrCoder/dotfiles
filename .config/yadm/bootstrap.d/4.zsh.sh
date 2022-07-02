#!/bin/bash

source /etc/os-release

if ! command -v zsh >/dev/null 2>&1; then
	if [[ $ID_LIKE == "debian" ]]; then
		if [[ "$(whoami)" == "root" ]]; then
			echo "Installing zsh"
			apt-get update
			apt-get install -y zsh
		else
			echo "Installing zsh"
			sudo apt-get update
			sudo apt-get install -y zsh
		fi
	fi
fi

if ! command -v omz >/dev/null 2>&1; then
	export ZSH="${XDG_CONFIG_HOME:-$HOME/.config}/zsh/oh-my-zsh"
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
fi

rm -rf $HOME/.zshrc # delete it, and use mine
ln -s $HOME/.config/zsh/zshrc $HOME/.zshrc

source $HOME/.zshrc
