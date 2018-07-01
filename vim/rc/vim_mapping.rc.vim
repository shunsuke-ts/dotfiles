let mapleader = "\<Space>"

nnoremap ZQ <Nop>
nnoremap ZZ <Nop>

nnoremap j gj
nnoremap k gk
nnoremap <Space>j +
nnoremap <space>k -
nnoremap <space>h ^
nnoremap <Space>l $
nnoremap <Space>wj <C-w>j
nnoremap <Space>wk <C-w>k
nnoremap <Space>wh <C-w>h
nnoremap <Space>wl <C-w>l

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap / /\v
nnoremap ? ?\v
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" auto escape
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" increment and decrement
nnoremap <Space>a <C-a>
nnoremap <Space>x <C-x>
