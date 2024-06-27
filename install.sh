#!/bin/sh

set -eu

# Install GIT
sudo apt-get update
sudo apt-get install git -y

# Clone dotfiles repository
if [ -e ~/.dotfiles ]; then
    mv ~/.dotfiles ~/.dotfiles.backup."$(date +%s)"
fi
git clone https://github.com/casantosmu/dotfiles.git ~/.dotfiles

# Run setup scripts
~/.dotfiles/setup/symlink.sh
~/.dotfiles/setup/node.sh
~/.dotfiles/setup/zsh.sh
