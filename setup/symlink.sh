#!/usr/bin/env bash

set -euo pipefail

link_file() {
    local file="$1"
    local target="$HOME/$file"

    if [ -e "$target" ]; then
        mv "$target" "$target.backup.$(date +%s)"
    fi

    ln -fs "$HOME/.dotfiles/$file" "$target"
}

link_file .zshrc
link_file .gitconfig
link_file .p10k.zsh
