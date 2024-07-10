# Dotfiles

This repository contains my personal dotfiles.

## Installation

```sh
curl -fsSL https://raw.githubusercontent.com/casantosmu/dotfiles/main/install.sh | sh -
```

## Contents

- `default-node-packages`: List of global Node.js packages to install.
- `install.sh`: Main installation script.
- `setup/`: Directory containing setup scripts:
  - `node.sh`: Installs Node.js and global packages.
  - `symlink.sh`: Creates symlinks for dotfiles.
  - `zsh.sh`: Installs Zsh and sets it as the default shell.
