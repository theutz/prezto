export GOPATH="$XDG_DATA_HOME/go"
export path=("$GOPATH/bin" $path)

hash -d go="$GOPATH"
hash -d gogh="$GOPATH/src/github.com"
