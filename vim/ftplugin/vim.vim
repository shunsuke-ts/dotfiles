if exists('b:did_load_ftplugin_vim')
  finish
endif

setlocal autoindent
setlocal smartindent
setlocal smarttab
setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal foldmethod=marker
setlocal commentstring="%s

let b:did_load_ftplugin_vim = 1
