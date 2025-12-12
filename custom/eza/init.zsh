if ! command -v eza &>/dev/null; then
  return 1
fi

# Source completions from GitHub if they're not there
if [[ ! -f "${0:a:h}/functions/_eza" ]]; then
  wget -O "${0:a:h}/functions/_eza" https://raw.githubusercontent.com/eza-community/eza/refs/heads/main/completions/zsh/_eza
fi

source "${0:a:h}/alias.zsh"
