if has('vim_starting')
  let g:system#win = 0
  let g:system#mac = 0
  let g:system#unix = 0
  let g:config_dir = expand('~/.vim')
  if has('win32') || has('win64')
    let g:system#win = 1
    let g:config_dir = expand('~/vimfiles')
  elseif has('mac')
    let g:system#mac = 1
  else
    let g:system#unix = 1
  endif
  
  if g:system#win
    set shellslash
  endif
  let $CACHE = expand('~/.cache')
endif

function! s:source_rc(path) abort
  let s_path = resolve(expand(g:config_dir . '/rc/' . a:path))
  if filereadable(s_path)
    execute 'source ' . s_path
  endif
endfunction

call s:source_rc('dein.rc.vim')
call s:source_rc('basic.rc.vim')
call s:source_rc('old.rc.vim')

filetype plugin indent on
syntax on
