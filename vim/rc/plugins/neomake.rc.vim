augroup neomake
  autocmd!
  autocmd BufWritePost * Neomake
augroup END

let s:goargs = go#package#ImportPath(expand('%:p:h'))
let g:neomake_go_errcheck_maker = {
      \ 'args': ['-abspath', s:goargs],
      \ 'append_file': 0,
      \ 'errorformat': '%f:%l:%c:\ %m, %f:%l:%c\ %#%m',
      \ }
let g:neomake_go_enabled_makers = ['golint', 'govet', 'errcheck']
