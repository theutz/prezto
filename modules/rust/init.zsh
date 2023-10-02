. "$HOME/.cargo/env"

if zstyle -T ':prezto:modules:rust:completion' enable; then
  setup-rust-completion
fi
