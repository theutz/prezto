fzf_args="--type f --hidden --follow --exclude .git --color=always"

if [[ $OSTYPE == linux-gnu ]]; then
  alias fd=fdfind
  export FZF_DEFAULT_COMMAND="fdfind $fzf_args"
else
  export FZF_DEFAULT_COMMAND="fd $fzf_args"
fi

export FZF_DEFAULT_OPTS="--ansi"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
else
  $(brew --prefix)/opt/fzf/install
fi
