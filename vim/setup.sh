#!/bin/bash

DOT='Git/dotfiles/vim'

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
  mkdir ~/.vim/tmp
  chmod 700 ~/.vim/tmp
fi

# Vim
ln -sfv  ~/$DOT/.vimrc       ~/.vimrc
ln -sfv  ~/$DOT/filetype.vim ~/.vim/filetype.vim
ln -sfvn ~/$DOT/ftplugin     ~/.vim/ftplugin
ln -sfvn ~/$DOT/rc           ~/.vim/rc
# Neovim
ln -sfv  ~/$DOT/init.vim     ~/.config/nvim/init.vim
ln -sfv  ~/.vim/filetype.vim ~/.config/nvim/filetype.vim
ln -sfvn ~/.vim/tmp          ~/.config/nvim/tmp
ln -sfvn ~/.vim/ftplugin     ~/.config/nvim/ftplugin
ln -sfvn ~/.vim/rc           ~/.config/nvim/rc
