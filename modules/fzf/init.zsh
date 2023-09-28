setopt ALL_EXPORT

zstyle -s ':prezto:module:fzf:default' command 'FZF_DEFAULT_COMMAND'
zstyle -s ':prezto:module:fzf:default' options 'FZF_DEFAULT_OPTS'

zstyle -s ':prezto:module:fzf:ctrl-t' command 'FZF_CTRL_T_COMMAND' \
  || zstyle -s ':prezto:module:fzf:default' command 'FZF_CTRL_T_COMMAND'
zstyle -s ':prezto:module:fzf:ctrl-t' options 'FZF_CTRL_T_OPTS' \
  || zstyle -s ':prezto:module:fzf:default' options 'FZF_CTRL_T_OPTS'

zstyle -s ':prezto:module:fzf:alt-c' options 'FZF_ALT_C_OPTS'

zstyle -s ':prezto:module:fzf:tmux' options 'FZF_TMUX_OPTS'

unsetopt ALL_EXPORT

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
