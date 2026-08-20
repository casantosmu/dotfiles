#!/usr/bin/env bash

set -euo pipefail

# Install NVM
PROFILE=/dev/null bash -c 'curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.7/install.sh | bash'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install --lts

# Install pnpm
# PNPM_VERSION requires an exact version: https://github.com/pnpm/pnpm/issues/11809
curl -fsSL https://get.pnpm.io/install.sh | env PNPM_VERSION=11.0.0 sh -

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME/bin:$PATH"
pnpm self-update 11
