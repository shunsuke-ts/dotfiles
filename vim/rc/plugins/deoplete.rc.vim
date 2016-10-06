" deoplete-jedi
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
if has('win32')
  let g:deoplete#sources#jedi#python_path = 'C:/Anaconda3/python'
endif
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 3

" deoplete-clang
let g:deoplete#sources#clang#libclang_path = $CLANG_LIB
let g:deoplete#sources#clang#clang_header = $CLANG_HEADER
" deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = 
      \ ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1
