ripgrep=/opt/ripgrep
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if [ -e $ripgrep ]; then
    export PATH=$PATH:$ripgrep
fi
