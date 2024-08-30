#!/bin/sh

set -eu

# Install Restic and Rclone
sudo apt update
sudo apt install rclone restic -y

# Setup Google Cloud with Rclone
# Info: https://rclone.org/drive/#making-your-own-client-id
# Example:
#   [gdrive]
#   type = drive
#   token = xxxx
#   client_id = xxxx
#   client_secret = xxxx
rclone config

# Setup Restic repository and excluded paths
ln -fs "$HOME/.dotfiles/.backup_exclude" "$HOME/.backup_exclude"
restic -r rclone:gdrive:backup init
