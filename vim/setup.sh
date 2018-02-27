#!/bin/sh

DOT='.dotfiles/vim'

if [ ! -d ~/.vim ]; then
  mkdir -p ~/.vim/tmp
  chmod 700 ~/.vim/tmp
fi

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi

# Vim
ln -sfv  ~/$DOT/.vimrc       ~/.vimrc
ln -sfv  ~/$DOT/filetype.vim ~/.vim/filetype.vim
ln -sfvn ~/$DOT/ftplugin     ~/.vim/ftplugin
ln -sfvn ~/$DOT/rc           ~/.vim/rc
ln -sfvn ~/$DOT/syntax       ~/.vim/syntax
# NeoVim
ln -sfv  ~/$DOT/init.vim     ~/.config/nvim/init.vim
ln -sfv  ~/.vimrc            ~/.config/nvim/.vimrc
ln -sfv  ~/.vim/filetype.vim ~/.config/nvim/filetype.vim
ln -sfvn ~/.vim/ftplugin     ~/.config/nvim/ftplugin
ln -sfvn ~/.vim/rc           ~/.config/nvim/rc
ln -sfvn ~/.vim/syntax       ~/.config/nvim/syntax
ln -sfvn ~/.vim/tmp          ~/.config/nvim/tmp
