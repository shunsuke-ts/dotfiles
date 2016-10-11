#!/bin/bash
if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
  mkdir ~/.vim/tmp
  chmod 700 ~/.vim/tmp
fi

ln -sfv ./.vimrc       ~/.vimrc
ln -sfv ./filetype.vim ~/filetype.vim  
ln -sfv ./after        ~/.vim/after    
ln -sfv ./rc           ~/.vim/rc       
