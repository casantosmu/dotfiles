#!/bin/sh

set -eu

# Instal GIT
sudo apt update
sudo apt install -y git

# Clone dotfiles repository
if [ -e ~/.dotfiles ]; then
    mv ~/.dotfiles ~/.dotfiles.backup."$(date +%s)"
fi
git clone https://github.com/casantosmu/dotfiles.git ~/.dotfiles

# Run setup scripts
~/.dotfiles/setup/symlink.sh
~/.dotfiles/setup/docker.sh
~/.dotfiles/setup/node.sh
~/.dotfiles/setup/zsh.sh
