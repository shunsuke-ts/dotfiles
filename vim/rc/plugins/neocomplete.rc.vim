let g:neocomplete#disable_auto_complete = 0
let g:neocomplete#enable_auto_close_preview = 1

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#auto_complete_delay = 30

let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_refresh_always = 1

let g:neocomplete#auto_completion_start_length = 1
let g:neocomplete#manual_completion_start_length = 0
let g:neocomplete#min_keyword_length = 2
let g:neocomplete#enable_auto_select = 1

let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default': '',
      \ }

let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 100

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#sources#omni#functions')
  let g:neocomplete#sources#omni#functions = {}
endif

let g:neocomplete#force_omni_input_patterns.c          = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp        = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#force_omni_input_patterns.cs         =  '.*[^=\);]'
let g:neocomplete#force_omni_input_patterns.go         = '\(\h\|\h\w\)\.\w*'
let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
let g:neocomplete#force_omni_input_patterns.python     = '\h\w*\|[^. \t]\.\w*'
let g:neocomplete#force_omni_input_patterns.tex        = '\(\\cite{\)\|\(\\ref{\)'

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

let g:neocomplete#sources#omni#functions.javascript = [
      \   'jspc#omni',
      \   'tern#Complete',
      \ ]
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

let g:neocomplete#fallback_mappings = ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]

