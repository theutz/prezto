#
# Defines Homebrew aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load dependencies.
pmodload 'helper'

# Return if requirements are not found.
if ! is-darwin && ! is-linux; then
  return 1
fi

#
# Variables
#

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.
if (( $+commands[brew] )); then
  eval "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}"
fi

#
# Completions
#
fpath=(
  /opt/homebrew/share/zsh/site-functions
  $fpath
)

#
# Aliases
#

# Homebrew
if ! zstyle -t ':prezto:module:homebrew:alias' skip; then
  alias brewc='brew cleanup'
  alias brewh='brew home'
  alias brewi='brew install'
  alias brewL='brew leaves'
  alias brewl='brew list'
  alias brewn='brew info'
  alias brewo='brew outdated'
  alias brews='brew search'
  alias brewu='brew upgrade'
  alias brewx='brew uninstall'

  # Homebrew Cask
  alias caskh='brew home --cask'
  alias caski='brew install --cask'
  alias caskl='brew list --cask'
  alias caskn='brew info --cask'
  alias casko='brew outdated --cask'
  alias casks='brew search --cask'
  alias casku='brew upgrade --cask'
  alias caskx='brew uninstall --cask'
fi
