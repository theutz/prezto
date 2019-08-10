# NOT APPLICABLE IN TERMUX
if [[ ! -v ANDROID_DATA ]]; then
  # lsd
  alias ls="lsd"

  # cat
  alias cat="bat"

  # top
  alias top="htop"

  # spotify
  alias s="spotify"

  # brew bundle
  alias brewb="brew bundle"
  alias brewbd="brew bundle dump"
  alias brewbD="brew bundle dump --force"
  alias brewbc="brew bundle cleanup"
  alias brewbC="brew bundle cleanup --force"
  alias brewbi="brew bundle install --no-upgrade"
  alias brewbu="brew bundle install"
fi

# git
alias giaa="git add -A"

# misc
alias todaymd="nvim `date +%Y-%m-%d`.md"
