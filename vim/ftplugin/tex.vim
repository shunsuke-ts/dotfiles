if exists('b:did_ftplugin_tex')
  finish
endif

setlocal autoindent
setlocal smartindent
setlocal smarttab
setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal foldmethod=marker
"setlocal commentstring=

let b:did_ftplugin_tex = 1
