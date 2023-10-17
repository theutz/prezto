if zstyle -T ':prezto:modules:nvim:bob' enable; then
  export path=("$XDG_DATA_HOME/bob/nvim-bin" $path)
  if command -v bob &> /dev/null; then
    eval "$(bob complete zsh)"
  fi
fi

if zstyle -T ':prezto:modules:nvim:man' enable; then
  export MANPAGER='nvim +Man!'
  export MANWIDTH='999'
fi
