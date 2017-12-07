augroup filetypedetect
  autocmd!
  autocmd BufNewFile,BufRead *.bashrc setlocal filetype=bash
  autocmd BufNewFile,BufRead *.c,*.h setlocal filetype=c
  autocmd BufNewFile,BufRead *.cpp,*.hpp setlocal filetype=cpp
  autocmd BufNewFile,BufRead *.cs setlocal filetype=cs
  autocmd BufNewFile,BufRead *.css setlocal filetype=css
  autocmd BufNewFile,BufRead *.flex,*.jflex setlocal filetype=jflex
  autocmd BufNewFile,BufRead *.go setlocal filetype=go
  autocmd BufNewFile,BufRead *.ino setlocal filetype=arduino
  autocmd BufNewFile,BufRead *.java setlocal filetype=java
  autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
  autocmd BufNewFile,BufRead *.l setlocal filetype=lex
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
  autocmd BufNewFile,BufRead *.pu setlocal filetype=plantuml
  autocmd BufNewFile,BufRead *.py setlocal filetype=python
  autocmd BufNewFile,BufRead *.r setlocal filetype=r
  autocmd BufNewFile,BufRead *.rb setlocal filetype=ruby
  autocmd BufNewFile,BufRead *.tex setlocal filetype=tex
  autocmd BufNewFile,BufRead *.toml set filetype=toml
  autocmd BufNewFile,BufRead *.vim,vimrc,gvimrc setlocal filetype=vim
  autocmd BufNewFile,BufRead *.y setlocal filetype=yacc
  autocmd BufNewFile,BufRead *.zsh,*.zshrc setlocal filetype=zsh

  autocmd BufNewFile,BufRead Dockerfile setlocal filetype=docker
augroup END

augroup setomnifunc
  autocmd!
  autocmd FileType c,cpp,lex,yacc setlocal omnifunc=ClangComplete
  "autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType go setlocal omnifunc=go#complete#Complete
  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  autocmd FileType python setlocal omnifunc=jedi#completions
augroup END
