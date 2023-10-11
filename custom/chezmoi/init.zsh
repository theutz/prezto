if ! zstyle -t ':prezto:module:chezmoi:brew' override; then
  unfunction brew
fi

typeset -a secret_files
zstyle -a ':prezto:module:chezmoi:secrets' files 'secret_files'
for secret_file in "${(k)secret_files[@]}"; do
  if [[ -f "$secret_file" ]]; then
    source $secret_file
  elif [[ -f "$(chezmoi target-path)/$secret_file" ]]; then
    source "$(chezmoi target-path)/$secret_file"
  fi
done
unset secret_file{,s}

source "${0:a:h}/aliases.zsh"
