#!/bin/bash

set -euo pipefail

CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"

case "$1" in
	"vim" | "nvim")
		ln -sf "$PWD/nvim" "$CONFIG/nvim"
		;;
	"ghostty")
		ln -sf "$PWD/ghostty" "$CONFIG/ghostty"
		;;
	"fish")
		ln -sf "$PWD/fish" "$CONFIG/fish"
		;;
	"")
		echo "Usage: $0 {vim|nvim|ghostty|fish}" >&2
		exit 1
		;;
	*)
		echo "Unsupported config: $1" >&2
		exit 1
		;;
esac

