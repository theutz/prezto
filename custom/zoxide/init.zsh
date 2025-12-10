! command -v zoxide &>/dev/null &&
  return 1

# Load zoxide
eval "$(zoxide init zsh)"

if zstyle -t ':prezto:module:zoxide:alias-cd' enable; then
  alias cd='z'
fi

if zstyle -T ':prezto:module:zoxide:widget' enable; then
  zle -N zoxide-interactive
  bindkey -M viins '^n' zoxide-interactive
fi
