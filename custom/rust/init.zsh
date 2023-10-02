. "$HOME/.cargo/env"

export RUST_COMPLETIONS_DIR="${0:a:h}/functions"

if zstyle -T ':prezto:modules:rust:completion' enable; then
  setup-rust-completion
fi
