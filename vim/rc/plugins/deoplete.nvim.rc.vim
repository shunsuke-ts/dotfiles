let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#auto_complete_start_length = 1
"let g:deoplete#enable_refresh_always = 0
"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#max_list = 10000

" deoplete-jedi
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3.5'

" deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-4.0/lib/libclang-4.0.so.1'
let g:deoplete#sources#clang#clang_header = 'usr/include/clang/4.0'

" deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class =
      \ ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1
