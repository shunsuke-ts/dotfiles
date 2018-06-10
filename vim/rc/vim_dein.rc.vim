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

function! s:load_toml(toml_file, args) abort
  let s_path = resolve(expand(s:rc_dir . a:toml_file . '.toml'))
  if filereadable(s_path)
    call dein#load_toml(s_path, a:args)
  endif
endfunction

call dein#begin(s:dein_path)
  call s:load_toml('dein',             {'lazy': 0})
  call s:load_toml('dein_lazy',        {'lazy': 1})
  call s:load_toml('dein_syntax',      {'lazy': 0})
  call s:load_toml('dein_display',     {'lazy': 0})
  call s:load_toml('dein_interface',   {'lazy': 0})
  call s:load_toml('dein_integration', {'lazy': 1})
  call s:load_toml('dein_language',    {'lazy': 1})
  call s:load_toml('dein_lsp',         {'lazy': 1, 'if': g:use_lsp})
  call s:load_toml('dein_deoplete',    {'lazy': 1, 'if': g:use_deoplete})
  call s:load_toml('dein_denite',      {'lazy': 1, 'if': g:use_denite})
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
