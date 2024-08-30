# Dotfiles

This repository contains my personal dotfiles.

## Installation

```sh
curl -fsSL https://raw.githubusercontent.com/casantosmu/dotfiles/main/install.sh | sh -
```

## Contents

- `install.sh`: Main installation script.
- `.backup_exclude`: The paths and patterns to be excluded from the backup.
- `setup/`: Directory containing setup scripts:
  - `backup.sh`: Sets up Google Drive integration for backups.
  - `node.sh`: Installs Node.js and global packages.
  - `symlink.sh`: Creates symlinks for dotfiles.
  - `zsh.sh`: Installs Zsh and sets it as the default shell.
