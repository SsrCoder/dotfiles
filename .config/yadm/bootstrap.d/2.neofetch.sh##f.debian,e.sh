#!/bin/bash

if ! command -v neofetch >/dev/null 2>&1; then
	if [[ "$(whoami)" == "root" ]]; then
		echo "Installing neofetch"
		apt-get update
		apt-get install -y neofetch
	else
		echo "Installing neofetch"
		sudo apt-get update
		sudo apt-get install -y neofetch
	fi
fi