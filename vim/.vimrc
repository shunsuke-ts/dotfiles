if has('vim_starting')
  let g:config_dir = expand('~/.vim')
  let g:system#win = 0
  let g:system#mac = 0
  let g:system#unix = 0

  if has('win32') || has('win64')
    let g:system#win = 1
    let g:config_dir = expand('~/vimfiles')
    set shellslash
  elseif has('mac')
    let g:system#mac = 1
  else
    let g:system#unix = 1
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
call s:source_rc('indent.rc.vim')
call s:source_rc('mappings.rc.vim')
call s:source_rc('old.rc.vim')

filetype plugin indent on
syntax on
set background=dark
colorscheme gruvbox
