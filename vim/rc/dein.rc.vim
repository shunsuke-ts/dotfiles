if !&compatible
  set nocompatible
endif

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1
let g:dein#install_log_filename = expand('~/dein.log')

let s:dein_path = expand('$CACHE/dein')
let s:dein_dir = s:dein_path . '/repos/github.com/Shougo/dein.vim'
let s:rc_dir = g:config_dir . '/rc/'

if !isdirectory(s:dein_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . s:dein_dir)
endif
execute 'set runtimepath+=' . s:dein_dir

if !dein#load_state(s:dein_path)
  finish
endif

call dein#begin(s:dein_path)
  call dein#load_toml(s:rc_dir . 'dein.toml',        {'lazy': 0})
  " call dein#load_toml(s:rc_dir . 'dein_lazy.toml',   {'lazy': 1})
  call dein#load_toml(s:rc_dir . 'dein_syntax.toml', {'lazy': 0})
  call dein#load_toml(s:rc_dir . 'dein_visual.toml', {'lazy': 0})
  " call dein#load_toml(s:rc_dir . 'dein_edit.toml',   {'lazy': 0})
  " call dein#load_toml(s:rc_dir . 'dein_sys.toml',    {'lazy': 1})
  " call dein#load_toml(s:rc_dir . 'dein_neo.toml',    {'lazy': 1})
  " call dein#load_toml(s:rc_dir . 'dein_env.toml',    {'lazy': 1})
call dein#end()
call dein#save_state()

augroup DeinInstall
  autocmd!
  autocmd VimEnter * call s:dein_install()
augroup END
function! s:dein_install()
  if !has('vim_starting') && dein#check_install()
    call dein#install()
  endif
endfunction

command! DeinUpdate call s:dein_update()
function! s:dein_update()
  if dein#check_update()
    call dein#update()
  endif
endfunction
