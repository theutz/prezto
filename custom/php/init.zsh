if command -v composer &> /dev/null; then
  path=("$(composer config --global home)/$(composer config --global bin-dir)" $path)
fi

# Aliases
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias wp='sh $([ -f wp ] && echo wp || echo vendor/bin/wp)'
