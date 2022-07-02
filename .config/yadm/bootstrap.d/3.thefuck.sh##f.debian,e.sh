#!/bin/bash

if ! command -v fuck >/dev/null 2>&1; then
    if [[ "$(whoami)" == "root" ]]; then
        echo "Installing fuck"
        apt-get update
        apt-get install -y thefuck
    else
        echo "Installing fuck"
        sudo apt-get update
        sudo apt-get install -y thefuck
    fi
fi