if command -v composer &> /dev/null; then
  path=("$(composer config --global home)/$(composer config --global bin-dir)" $path)
fi
