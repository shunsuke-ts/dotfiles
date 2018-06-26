nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_sign_column_always = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0

let g:go_fmt_fail_silently = 1

let g:ale_linters = {
      \ 'c': ['clang', 'cppcheck', 'cpplint'],
      \ 'cpp': ['clang', 'cppcheck', 'cpplint'],
      \ 'cmake': ['cmakelint'],
      \ 'go': ['golint', 'vet', 'gotype'],
      \ 'rust': ['rustc'],
      \ 'python': ['flake8'],
      \ 'vim': [''],
      \ }
" \'vim': ['vint'],

let g:ale_fixers = {
      \ 'go': ['gofmt', 'goimports'],
      \ 'rust': ['rustfmt'],
      \ 'python': ['autopep8', 'isort'],
      \ }

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ],
      \             [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ],
      \ },
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
