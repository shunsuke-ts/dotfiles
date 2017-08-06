"let g:quickhl_cword_enable_at_startup = 1        " カーソル位置ハイライトを最初から有効
" 指定単語のハイライト有効/無効
nmap <Leader>* <Plug>(quickhl-manual-toggle)
" 現在のカーソル位置/または選択中の単語ハイライトを有効/無効
vmap <Leader>; <Plug>(quickhl-manual-this)
nmap <Leader>; <Plug>(quickhl-manual-this)
" カーソルに追従した単語ハイライトを有効/無効
nmap <Leader>+ <Plug>(quickhl-cword-toggle)
" タグファイルの単語ハイライトを有効/無効
nmap <Leader>] <Plug>(quickhl-tag-toggle)
" `quickhl-manual-*`で登録した単語のハイライトを解除する
vmap <Leader><Esc> <Plug>(quickhl-manual-reset)
nmap <Leader><Esc> <Plug>(quickhl-manual-reset)
" 指定の単語のハイライト色
"highlight Search gui=underline guibg=None guifg=None
let g:quickhl_manual_colors = [
   \ "gui=none ctermfg=7   ctermbg=153 guibg=#4169e1 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=1   guibg=#70a040 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=2   guibg=#ffa500 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=3   guibg=#cd4040 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=4   guibg=#20b2aa guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=5   guibg=#6a5acd guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=6   guibg=#f08080 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=45  guibg=#1060a0 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=16  guibg=#2e8b57 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=21  guibg=#a9a9a9 guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=22  guibg=#e0c67c guifg=#ffffff",
   \ "gui=none ctermfg=7   ctermbg=56  guibg=#dd0add guifg=#ffffff",
   \ "gui=none ctermfg=16  ctermbg=50  guibg=#00ffff guifg=#222222",
   \ ]
" カーソルに追従するハイライト色
let g:quickhl_cword_hl_command = "QuickhlCword gui=underline,bold cterm=underline term=underline"
" タグファイル登録単語のハイライト色
let g:quickhl_tag_hl_command = "QuickhlTag gui=underline cterm=underline term=underline"
" 常にハイライトさせる単語
let g:quickhl_manual_enable_at_startup = 1
let g:quickhl_manual_keywords = [
   \ "pachicoma",
   \ {"pattern": '\s\+$', "regexp": 1 },  
   \ ]
