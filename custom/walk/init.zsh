export WALK_OPEN_WITH="md:glow -p;go:nvim"

command -v trash &>/dev/null &&
  export WALK_REMOVE_CMD="trash"

alias lk &>/dev/null &&
  unalias lk

function lk() {
  cd "$(walk --icons "$@")"
}
