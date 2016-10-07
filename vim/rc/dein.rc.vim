if !&compatible
  set nocompatible
endif

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

let s:dein_path = expand('$CACHE/dein')
let s:dein_dir = s:dein_path . '/repos/github.com/Shougo/dein.vim'
let s:rc_dir = g:config_dir . '/rc/'

if !isdirectory(s:dein_dir)
  call system('git clone https://github.com/Shougo/dein.vim '
        \ . s:dein_dir)
endif
execute 'set runtimepath+=' . s:dein_dir

if !dein#load_state(s:dein_path)
  finish
endif

call dein#begin(s:dein_path, [expand('<sfile>')]
      \ + split(glob(s:rc_dir . '*.toml'), '\n'))

call dein#load_toml(s:rc_dir . 'dein.toml',      {'lazy': 0})
call dein#load_toml(s:rc_dir . 'dein_lang.toml', {'lazy': 0})
call dein#load_toml(s:rc_dir . 'dein_lazy.toml', {'lazy': 1})
if has('nvim')
  call dein#load_toml(s:rc_dir . 'dein_neo.toml', {})
endif
"call dein#load_toml('~/.vim/rc/dein_ft.toml')
"
"let s:vimrc_local = findfile('vimrc_local.vim', '.;')
"if s:vimrc_local !=# ''
"  " Load develop version plugins.
"  call dein#local(fnamemodify(s:vimrc_local, ':h'),
"        \ {'frozen': 1, 'merged': 0},
"        \ ['vim*', 'unite-*', 'neco-*', '*.vim', 'denite.nvim'])
"  if has('nvim')
"    call dein#local(fnamemodify(s:vimrc_local, ':h'),
"          \ {'frozen': 1, 'merged': 0},
"          \ ['deoplete-*', '*.nvim'])
"  endif
"endif
"
"if dein#tap('deoplete.nvim') && has('nvim')
"  call dein#disable('neocomplete.vim')
"endif
"call dein#disable('neobundle.vim')
"call dein#disable('neopairs.vim')

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  " Installation check.
  call dein#install()
endif

