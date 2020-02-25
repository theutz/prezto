#
# Provides fzf-powered interactive commands for git
#
# Authors:
#   Michael Utz <michael@theutz.com>
#

# If the command doesn't exist externally, we need to fall back to the bundled
# submodule.
if (( ! $+commands[forgit::add] )); then
  source "${0:h}/external/forgit.plugin.zsh" || return 1
fi

