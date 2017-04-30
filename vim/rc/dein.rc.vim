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

call dein#load_toml(s:rc_dir . 'dein.toml',       {'lazy': 0})
call dein#load_toml(s:rc_dir . 'dein_sys.toml', {'lazy': 0})
call dein#load_toml(s:rc_dir . 'dein_color.toml', {'lazy': 0})
call dein#load_toml(s:rc_dir . 'dein_lazy.toml',  {'lazy': 1})
call dein#load_toml(s:rc_dir . 'dein_unite.toml',  {'lazy': 1})
call dein#load_toml(s:rc_dir . 'dein_lang.toml')
if has('nvim')
  call dein#load_toml(s:rc_dir . 'dein_neo.toml', {})
endif

call dein#end()
call dein#save_state()

if dein#check_install()
  " Installation check.
  call dein#install()
endif
