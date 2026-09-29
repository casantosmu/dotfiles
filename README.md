# Dotfiles

This repository contains my personal dotfiles.

## Installation

```sh
curl -fsSL https://raw.githubusercontent.com/casantosmu/dotfiles/main/install.sh | bash -
```

## Font

Use a [Nerd Font](https://github.com/romkatv/powerlevel10k#fonts) with Powerlevel10k (MesloLGS NF recommended).

## Git identity

Configure the Git identity per computer in `~/.gitconfig.local`:

```sh
git config --file "$HOME/.gitconfig.local" user.name "Carlos Santos"
git config --file "$HOME/.gitconfig.local" user.email "email@example.com"
```

## Contents

- `install.sh`: Main installation script.
- `setup/`: Directory containing setup scripts:
  - `node.sh`: Installs Node.js and global packages.
  - `symlink.sh`: Creates symlinks for dotfiles.
  - `zsh.sh`: Installs Zsh and sets it as the default shell.
