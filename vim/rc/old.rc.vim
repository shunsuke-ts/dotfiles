colorscheme badwolf

augroup vimrc_auto_reload
  autocmd!
  autocmd BufWritePost .vimrc execute 'source' $MYVIMRC
augroup END

let g:pyrhon3_host_prog = '/usr/bin/python3'
if has('win32')
  let g:python3_host_prog = 'C:/Anaconda3/python'
endif  
let g:python3_host_skip_check = 1

" Plugins 
if has('win32')
  let g:vimproc#download_windows_dll = 1
endif
let g:vimfiler_as_default_explorer = 1

" Completion 
set completeopt-=menu,preview
set completeopt+=menuone,noinsert,noselect

" Languages 
" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
