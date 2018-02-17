#!/bin/sh

ripgrep=/opt/ripgrep-0.7.1
caper=/opt/caper
phantomjs=/opt/phantomjs-2.1.3

#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$ripgrep
export PATH=$PATH:$caper
export PATH=$PATH:$phantomjs
