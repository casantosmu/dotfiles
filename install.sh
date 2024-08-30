#!/bin/sh

set -eu

# Install GIT
sudo apt-get update
sudo apt-get install git -y

# Clone dotfiles repository
if [ -e "$HOME/.dotfiles" ]; then
    mv "$HOME/.dotfiles" "$HOME/.dotfiles.backup.$(date +%s)"
fi
git clone https://github.com/casantosmu/dotfiles.git "$HOME/.dotfiles"

# Run setup scripts
"$HOME/.dotfiles/setup/backup.sh"
"$HOME/.dotfiles/setup/node.sh"
"$HOME/.dotfiles/setup/symlink.sh"
"$HOME/.dotfiles/setup/zsh.sh"
