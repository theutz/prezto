zstyle -a ':prezto:module:keychain' keys 'keychain_keys'
zstyle -a ':prezto:module:keychain' agents 'keychain_agents'

local keychain_quiet

if zstyle -t ':prezto:module:keychain' quiet; then
  keychain_quiet="--quiet"
fi

eval "$(keychain --eval $keychain_quiet --agents "${(j:,:)keychain_agents}" "$keychain_keys[@]")"

unset keychain_keys keychain_agents keychain_quiet