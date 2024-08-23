#!/bin/sh

set -eu

# Install NVM
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'

# Install PNPM
curl -fsSL https://get.pnpm.io/install.sh | sh -
