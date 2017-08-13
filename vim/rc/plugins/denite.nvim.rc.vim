" Replace grep to ripgrep
if executable('rg')
  call denite#custom#var('file_rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
endif

nnoremap <silent> <C-p> :<C-u>Denite file_rec<CR>
