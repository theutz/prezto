if zstyle -T ':prezto:modules:nb:server' autostart; then
  if (( $+commands[tmux] )) && ! tmux -L nb has-session -t nb &> /dev/null; then
    tmux -L nb new-session -d -s nb -c $HOME "nb browse -s"
  fi
fi > /dev/null

alias nba='nb add'
alias nbb='nb bookmark'
alias nbbls='nb bookmark ls'
alias nbcd='cd "$(nb settings get nb_dir | tr -d \"\\n\")"'
alias nbcp='nb copy'
alias nbd='nb do'
alias nbD='nb undo'
alias nbf='nb folders'
alias nbg='nb git'
alias nbla='nb list'
alias nbls='nb ls'
alias nbm='nb pin' # mark
alias nbM='nb unpin' # unmark
alias nbmv='nb move'
alias nbnb='nb notebooks'
alias nbo='nb open'
alias nbp='nb peek'
alias nbs='nb shell'
alias nbt='nb todo'
alias nbta='nb todo add'
alias nbts='nb todos'
alias nbtt='nb todo tasks'
alias nbu='nb use'
alias nbw='nb browse'
alias nbx='nb delete'
