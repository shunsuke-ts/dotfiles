if has('vim_starting')
  let g:config_dir = expand('~/.vim')
  let g:is_win = has('win32') || has('win64')
  let g:is_mac = has('mac')
  let g:is_unix = has('unix')
  let g:is_nvim = has('nvim')
  let g:is_vim8 = v:version >= 800


  let $CACHE = expand('~/.cache')

  if g:is_nvim
    let g:config_dir = expand('~/.config/nvim')
    let g:python_host_prog = exepath('python')
    let g:python3_host_prog = exepath('python3')
  endif
  if g:is_win
    set shellslash
    let g:config_dir = expand('~/vimfiles')
    let g:python_host_prog = expand('')
    let g:python3_host_prog = exepath('python')
    if g:is_nvim
      let g:config_dir = expand('~/AppData/Local/nvim')
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

let g:use_deoplete = 1
let g:use_denite   = 1
let g:use_lsp      = 0

call Source('rc/vim_basic.rc.vim')
call Source('rc/vim_indent.rc.vim')
call Source('rc/vim_mappings.rc.vim')
call Source('rc/vim_encoding.rc.vim')
call Source('rc/vim_dein.rc.vim')

filetype plugin indent on
