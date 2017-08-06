if exists('b:did_ftplugin_json')
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
"
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
  if 0 == a:0
    let l:arg = "."
  else
    let l:arg = a:1
  endif
  execute "%! jq \"" . l:arg . "\""
endfunction
augroup jsonautofix
  autocmd BufWrite * :Jq
augroup END

let b:did_ftplugin_json = 1
