#!/usr/bin/env bash

set -euo pipefail

backup_file() {
    if [ -e "$1" ]; then
        mv "$1" "$1.backup.$(date +%s)"
    fi
}

backup_file "$HOME/.zshrc"
backup_file "$HOME/.gitconfig"
backup_file "$HOME/.bashrc"
backup_file "$HOME/.p10k.zsh"

ln -fs "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
ln -fs "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -fs "$HOME/.dotfiles/.bashrc" "$HOME/.bashrc"
ln -fs "$HOME/.dotfiles/.p10k.zsh" "$HOME/.p10k.zsh"
