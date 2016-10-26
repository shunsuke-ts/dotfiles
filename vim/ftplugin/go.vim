if exists('b:did_load_ftplugin_go')
  finish
endif

setlocal autoindent
setlocal smartindent
setlocal smarttab
setlocal noexpandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal foldmethod=marker
" setlocal commentstring=

setlocal rtp+=$GOPATH/src/github.com/nsf/gocode/vim
setlocal rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

let b:did_load_ftplugin_go = 1
