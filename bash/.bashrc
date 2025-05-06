# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# fnm
FNM_PATH="/home/amjad/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# pnpm
export PNPM_HOME="/home/amjad/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source "$HOME/.bash-aliases"
source "$HOME/.yazi"

eval "$(starship init bash)"
eval "$(zoxide init bash)"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# Created by `pipx` on 2025-01-21 19:58:07
export PATH="$PATH:/home/amjad/.local/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
