if exists('b:did_ftplugin_jflex')
  finish
endif

source g:config_dir . '/syntax/jflex.vim'

setlocal autoindent
setlocal smartindent
setlocal smarttab
setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
"setlocal foldmethod=indent
"setlocal commentstring=

let b:did_ftplugin_jflex = 1
