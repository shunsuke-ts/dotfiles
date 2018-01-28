#!/bin/sh

ripgrep=/opt/ripgrep-0.7.1
caper=/opt/caper
neo4j=/opt/neo4j-community-3.3.0
marp=/opt/marp-0.0.11
cayley=/opt/cayley_v0.6.1

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$ripgrep
export PATH=$PATH:$caper
export PATH=$PATH:$neo4j/bin
export PATH=$PATH:$marp
export PATH=$PATH:$cayley
