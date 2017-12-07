#!/bin/sh

DOT='Git/dotfiles/shell'

if [ ! -d ~/shell ]; then
  mkdir -p ~/shell
fi

ln -sfv ~/$DOT/.zshrc       ~/.zshrc
ln -sfv ~/$DOT/zplug.zsh    ~/shell/zplug.zsh
ln -sfv ~/$DOT/systemenv.sh ~/shell/systemenv.sh
