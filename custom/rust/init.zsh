if [[ -z "$CARGO_HOME" ]]; then
  export CARGO_HOME="$XDG_DATA_HOME"/cargo
fi

if [[ -z "$RUSTUP_HOME" ]]; then
  export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
fi

[[ -s "$CARGO_HOME/env" ]] && . "$CARGO_HOME/env"

# Prepend cargo bin to path
path=("${CARGO_HOME}/bin" $path)

if zstyle -T ':prezto:modules:rust:completion' enable; then
  export RUST_COMPLETIONS_DIR="${0:a:h}/functions"
  setup-rust-completion
fi
