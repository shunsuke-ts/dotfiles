if exists('b:did_ftplugin_css')
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
"setlocal commentstring=
setlocal iskeyword+=

let b:did_ftplugin_css = 1
