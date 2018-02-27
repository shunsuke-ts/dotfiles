#!/bin/sh

DOT='.dotfiles/shell'

if [ ! -d ~/shell ]; then
  mkdir -p ~/shell
fi

ln -sfv ~/$DOT/.zshrc       ~/.zshrc
ln -sfv ~/$DOT/zplug.zsh    ~/shell/zplug.zsh
ln -sfv ~/$DOT/alias.sh     ~/shell/alias.sh
ln -sfv ~/$DOT/systemenv.sh ~/shell/systemenv.sh
