#!/bin/zsh

if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

source ~/.zplug/init.zsh
source ~/shell/zplug.zsh

source ~/shell/alias.sh
source ~/shell/systemenv.sh
