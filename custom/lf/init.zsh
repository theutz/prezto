if (( ! $+commands[lf] )); then
  return 1
fi

if zstyle -t ':prezto:module:lf' cd 'yes'; then
  alias lf="lfcd"
fi

zle -N zlf
bindkey -M vicmd '^o' zlf
bindkey -M viins '^o' zlf

zle -N zlf_handler

