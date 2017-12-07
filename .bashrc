ripgrep=/opt/ripgrep-0.7.1
caper=/opt/caper
gonzui=/opt/gonzui-1.2
quex=/opt/quex/quex-0.67.5
neo4j=/opt/neo4j-community-3.3.0
marp=/opt/marp-0.0.11
cayley=/opt/cayley_v0.6.1
resilio=/opt/resilio-sync

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$caper
export PATH=$PATH:$gonzui
export PATH=$PATH:$neo4j/bin
export PATH=$PATH:$marp
export PATH=$PATH:$cayley
export PATH=$PATH:$resilio
export QUEX_PATH=$quex

if [ -x $ripgrep/rg ]; then
    export PATH=$PATH:$ripgrep
fi
