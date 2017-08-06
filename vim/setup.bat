set DOT=%HOME%\Git\dotfiles\vim

mkdir %HOME%\vimfiles

del      %HOME%\.vimrc
del      %HOME%\.gvimrc
del      %HOME%\vimfiles\filetype.vim
rd /S /Q %HOME%\vimfiles\ftplugin
rd /S /Q %HOME%\vimfiles\rc

REM Vim
mklink    %HOME%\.vimrc                          %DOT%\.vimrc
mklink    %HOME%\.gvimrc                         %DOT%\.gvimrc
mklink    %HOME%\vimfiles\filetype.vim           %DOT%\filetype.vim
mklink /D %HOME%\vimfiles\ftplugin               %DOT%\ftplugin
mklink /D %HOME%\vimfiles\rc                     %DOT%\rc
mklink /D %HOME%\vimfiles\syntax                 %DOT%\syntax
REM NeoVim
mklink    %HOME%\AppData\Local\nvim\init.vim     %DOT%\init.vim
mklink    %HOME%\AppData\Local\nvim\.vimrc       %HOME%\.vimrc
mklink    %HOME%\AppData\Local\nvim\filetype.vim %HOME%\vimfiles\filetype.vim
mklink /D %HOME%\AppData\Local\nvim\ftplugin     %HOME%\vimfiles\ftplugin
mklink /D %HOME%\AppData\Local\nvim\rc           %HOME%\vimfiles\rc
mklink /D %HOME%\AppData\Local\nvim\syntax       %HOME%\vimfiles\syntax
mklink /D %HOME%\AppData\Local\nvim\tmp          %HOME%\vimfiles\tmp

set /P WAIT="Press Enter to Exit."

unset DOT
