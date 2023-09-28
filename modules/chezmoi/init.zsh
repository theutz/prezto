if ! zstyle -t ':prezto:module:chezmoi:brew' override; then
  unfunction brew
fi

eval "$(chezmoi completion zsh)"
