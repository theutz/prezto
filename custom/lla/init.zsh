# Don't load if the commmand isn't installed
if ! command -v lla &>/dev/null; then
  return 1
fi

# Install completions
if [[ ! -f "${0:a:h}/functions/_lla" ]]; then
  lla completion zsh -o "${0:a:h}/functions/_lla"
fi

source "${0:a:h}/alias.zsh"
