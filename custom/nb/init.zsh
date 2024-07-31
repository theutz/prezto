if zstyle -T ':prezto:modules:nb:server' autostart; then
  if (( $+commands[tmux] )) && ! tmux -L nb has-session -t nb &> /dev/null; then
    tmux -L nb new-session -d -s nb -n main -c $HOME "nb browse -s"
  fi
fi > /dev/null

source "${0:a:h}/alias.zsh"
