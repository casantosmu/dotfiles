export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:plugins:nvm' autoload yes

plugins=(
    nvm
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"

[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
