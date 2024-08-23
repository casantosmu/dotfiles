#!/bin/sh

set -eu

# Install zsh
sudo apt update
sudo apt install -y zsh xclip

# Change default shell to Zsh
sudo chsh -s "$(which zsh)" "$(whoami)"

# Install Oh My Zsh
if [ -e "$HOME/.oh-my-zsh" ]; then
    mv "$HOME/.oh-my-zsh" "$HOME/.oh-my-zsh.backup.$(date +%s)"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# Add custom files
ln -fs "$HOME/.dotfiles/.functions" "$HOME/.oh-my-zsh/custom/functions.zsh"

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

# Install Zsh themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"
