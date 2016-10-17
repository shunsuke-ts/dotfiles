if has('vim_starting')
  let g:config_dir = expand('~/.vim')
  let g:is_win = 0
  let g:is_mac = 0
  let g:is_unix = 0

  if has('win32') || has('win64')
    let g:is_win = 1
    let g:config_dir = expand('~/vimfiles')
    set shellslash
  elseif has('mac')
    let g:is_mac = 1
  else
    let g:is_unix = 1
  endif

  let g:is_nvim = 0
  if has('nvim')
     let g:is_nvim = 1
  endif
  
  let $CACHE = expand('~/.cache')
endif

function! Source(path) abort
  let s_path = resolve(expand(g:config_dir . '/'. a:path))
  if filereadable(s_path)
    execute 'source ' . s_path
  endif
endfunction

function! Source_rc(path) abort
  call Source('rc/' . a:path)
endfunction


augroup vimrc_autoreload
  autocmd!
  autocmd BufWritePost .vimrc execute 'source' $MYVIMRC
augroup END

let g:pyrhon3_host_prog = '/usr/bin/python3'
if has('win32')
  let g:python3_host_prog = 'C:/Anaconda3/python'
endif  
let g:python3_host_skip_check = 1

" Completion 
set completeopt-=menu,preview
set completeopt+=menuone,noinsert,noselect

call Source_rc('dein.rc.vim')
call Source_rc('basic.rc.vim')
call Source_rc('indent.rc.vim')
call Source_rc('mappings.rc.vim')

filetype plugin indent on
