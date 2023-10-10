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

alias cm='chezmoi'
alias cma='chezmoi add'
alias cmA='chezmoi apply -v'
alias cmcd='chezmoi cd'
alias cmd='chezmoi diff'
alias cme='chezmoi-edit'
alias cmg='chezmoi git'
alias cmgws='chezmoi git -- status --short'
alias cmgwS='chezmoi git -- status'
alias cmlg='(cd "$(chezmoi source-path)" && lazygit)'
alias cmls='chezmoi-ls'
alias cmm='chezmoi merge'
alias cmma='chezmoi merge-all'
alias cmra='chezmoi re-add'
alias cms='chezmoi status'
alias cmu='chezmoi update'
alias cmx='chezmoi forget'
alias cmX='chezmoi remove'
