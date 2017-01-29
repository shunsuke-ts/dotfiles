set DOT=%HOME%\git.repos\dotfiles\vim

mkdir %HOME%\vimfiles

del      %HOME%\.vimrc
del      %HOME%\.gvimrc
del      %HOME%\vimfiles\filetype.vim
rd /S /Q %HOME%\vimfiles\ftplugin
rd /S /Q %HOME%\vimfiles\rc

mklink    %HOME%\.vimrc                 %DOT%\.vimrc
mklink    %HOME%\.gvimrc                 %DOT%\.gvimrc
mklink    %HOME%\vimfiles\filetype.vim  %DOT%\filetype.vim
mklink /D %HOME%\vimfiles\ftplugin      %DOT%\ftplugin
mklink /D %HOME%\vimfiles\rc            %DOT%\rc

set /P WAIT="Press Enter to Exit."

unset DOT
