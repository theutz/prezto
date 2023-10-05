if zstyle -T ':prezto:module:rust:dir' use-xdg; then
  export CARGO_HOME="$XDG_DATA_HOME"/cargo
  export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
  . "$CARGO_HOME/env"
else
  . "$HOME/.cargo/env"
fi

# Prepend cargo bin to path
path=("${CARGO_HOME:-$HOME/cargo}/bin" $path)

if zstyle -T ':prezto:modules:rust:completion' enable; then
  export RUST_COMPLETIONS_DIR="${0:a:h}/functions"
  setup-rust-completion
fi
