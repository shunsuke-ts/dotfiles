if has('vim_starting')
  let g:config_dir = expand('~/.vim')
  let g:is_win = has('win32') || has('win64')
  let g:is_mac = has('mac')
  let g:is_unix = has('unix')
  let g:is_vim8 = has('nvim') && v:version >= 800
  let g:is_nvim = has('nvim')


  let $CACHE = expand('~/.cache')

  if g:is_nvim
    let g:config_dir = expand('~/.config/nvim')
    let g:python_host_prog = expand('/usr/bin/python2.7')
    let g:python3_host_prog = expand('/usr/bin/python3.5')
  endif
  if g:is_win
    set shellslash
    let g:config_dir = expand('~/vimfiles')
    if g:is_nvim
      let g:config_dir = expand('~/AppData/Local/nvim')
      let g:python_host_prog = expand('C:/App/Python27/python.exe')
      let g:python3_host_prog = expand('C:/App/Python35/python.exe')
    endif
  endif

  let g:has_lua = has('lua')
  let g:has_python = has('python')
  let g:has_python3 = has('python3')
endif

function! Source(path) abort
  let s_path = resolve(expand(g:config_dir . '/'. a:path))
  if filereadable(s_path)
    execute 'source ' . s_path
  endif
endfunction

" Completion
set completeopt=menuone

call Source('rc/basic.rc.vim')
call Source('rc/indent.rc.vim')
call Source('rc/mappings.rc.vim')
call Source('rc/encoding.rc.vim')
call Source('rc/dein.rc.vim')

filetype plugin indent on
