#!/bin/sh

set -eu

# Install zsh
sudo apt update
sudo apt install -y zsh xclip

# Change default shell to Zsh
chsh -s "$(which zsh)"

# Install Oh My Zsh
if [ -e ~/.oh-my-zsh ]; then
    mv ~/.oh-my-zsh ~/.oh-my-zsh.backup."$(date +%s)"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# Add aliases
ln -fs ~/.dotfiles/.aliases  ~/.oh-my-zsh/custom/aliases.zsh

# Install Zsh plugins
[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] || git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
