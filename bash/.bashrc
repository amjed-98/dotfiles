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
eval "$(atuin init bash)"
