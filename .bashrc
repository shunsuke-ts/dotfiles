caper=/opt/caper
ripgrep=/opt/ripgrep-0.7.1
quex=/opt/quex/quex-0.67.5

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$caper
export QUEX_PATH=$quex

if [ -x $ripgrep/rg ]; then
    export PATH=$PATH:$ripgrep
fi
