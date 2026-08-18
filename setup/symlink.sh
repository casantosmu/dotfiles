#!/bin/sh

backup_file() {
    if [ -e "$1" ]; then
        mv "$1" "$1.backup.$(date +%s)"
    fi
}

backup_file "$HOME/.zshrc"
backup_file "$HOME/.gitconfig"
backup_file "$HOME/.bashrc"

ln -fs "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
ln -fs "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -fs "$HOME/.dotfiles/.bashrc" "$HOME/.bashrc"
