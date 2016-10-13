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
setlocal runtimepath+=$GOPATH/src/github.com/nsf/gocode/vim
setlocal runtimepath+=$GOPATH/src/github.com/golang/lint/misc/vim
" setlocal commentstring=
setlocal omnifunc=gocomplete#Complete
" let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*'

let b:did_load_ftplugin_go = 1
