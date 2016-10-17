let g:neocomplete#enable_at_startup = 1
let g:neocomplete#disable_auto_complete = 0

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#auto_complete_delay = 30

let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_refresh_always = 1

let g:neocomplete#auto_completion_start_length = 2
let g:neocomplete#manual_completion_start_length = 0
let g:neocomplete#min_keyword_length = 3
let g:neocomplete#enable_auto_select = 1

"let g:neocomplete#sources#dictionary#dictionaries = {
"      \ 'default': '',
"      \ }

let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 100
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#sources#omni#functions')
  let g:neocomplete#sources#omni#functions = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#enable_auto_close_preview = 1

let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.ruby =
      \ '[^. *\t]\.\w*\|\h\w*::\w*'

let g:neocomplete#sources#omni#input_patterns.c = 
      \ '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.php =
      \'\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.python =
      \ '[^. *\t]\.\w*\|\h\w*'
let g:neocomplete#sources#omni#input_patterns.ruby =
      \ '[^. *\t]\.\w*\|\h\w*::\w*'
let g:neocomplete#sources#omni#input_patterns.lua =
      \ '\w\+[.:]\|require\s*(\?["'']\w*'

let g:neocomplete#sources#omni#functions.go =
      \ 'gocomplete#Complete'

if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\k*(\?'

let g:neocomplete#ignore_source_files = []

let g:neocomplete#sources#vim#complete_functions = {
      \ 'Ref': 'ref#complete',
      \ 'Unite': 'unite#complete_source',
      \ 'VimShellExecute':
      \      'vimshell#vimshell_execute_complete',
      \ 'VimShellInteractive':
      \      'vimshell#vimshell_execute_complete',
      \ 'VimShellTerminal':
      \      'vimshell#vimshell_execute_complete',
      \ 'VimShell': 'vimshell#complete',
      \ 'VimFiler': 'vimfiler#complete',
      \ 'Vinarise': 'vinarise#complete',
      \}

" <C-f>, <C-b>: page move.
inoremap <expr><C-f>  pumvisible() ? "\<PageDown>" : "\<Right>"
inoremap <expr><C-b>  pumvisible() ? "\<PageUp>"   : "\<Left>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr> <BS> neocomplete#smart_close_popup()."\<C-h>"
" <C-n>: neocomplete.
inoremap <expr> <C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>\<Down>"
" <C-p>: keyword completion.
inoremap <expr> <C-p>  pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
inoremap <expr> '  pumvisible() ? "\<C-y>" : "'"

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"

let g:neocomplete#fallback_mappings = ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]

