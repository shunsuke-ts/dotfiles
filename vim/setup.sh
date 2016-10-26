#!/bin/bash

DOT='git.repos/dotfiles/vim'

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
  mkdir ~/.vim/tmp
  chmod 700 ~/.vim/tmp
fi

ln -sfv  $HOME/$DOT/.vimrc       ~/.vimrc
ln -sfv  $HOME/$DOT/filetype.vim ~/.vim/filetype.vim
ln -sfvn $HOME/$DOT/ftplugin     ~/.vim/ftplugin
ln -sfvn $HOME/$DOT/rc           ~/.vim/rc
