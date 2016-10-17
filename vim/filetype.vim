augroup filetypedetect
  autocmd!
  autocmd BufNewFile,BufRead *.bashrc setlocal filetype=bash
  autocmd BufNewFile,BufRead *.c,*.h setlocal filetype=c
  autocmd BufNewFile,BufRead *.cpp,*.hpp setlocal filetype=cpp
  autocmd BufNewFile,BufRead *.go setlocal filetype=go
  autocmd BufNewFile,BufRead *.ino setlocal filetype=arduino
  autocmd BufNewFile,BufRead *.java setlocal filetype=java
  autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
  autocmd BufNewFile,BufRead *.py setlocal filetype=python
  autocmd BufNewFile,BufRead *.r setlocal filetype=r
  autocmd BufNewFile,BufRead *.rb setlocal filetype=ruby
  autocmd BufNewFile,BufRead *.tex setlocal filetype=tex
  autocmd BufNewFile,BufRead *.toml set filetype=toml
  autocmd BufNewFile,BufRead *.vim,vimrc,gvimrc setlocal filetype=vim
  autocmd BufNewFile,BufRead *.zshrc setlocal filetype=zsh
augroup END

augroup setomnifunc
  autocmd!
  autocmd FileType c setlocal omnifunc=ccomplete#CompleteCPP
  autocmd FileType cpp setlocal omnifunc=cppcomplete#CompleteCPP
  autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType go setlocal omnifunc=gocomplete#Complete
  autocmd FileType html,markdown setlocal omnifunc=htmlcomFiletype
  autocmd FileTYpe java setlocal omnifunc=javacomplete#Completeplete
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END
