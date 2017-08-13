let g:vaffle_auto_cd = 1 "auto cd working directory
" let g:vaffle_force_delete = 0 " doesn't delete non-empty directory
let g:vaffle_show_hidden_files = 1
" let g:vaffle_use_default_mappings = 1

command! VaffleTab :tabedit | :Vaffle

nnoremap ,vfa :<C-u>Vaffle <CR>
nnoremap ,vft :<C-u>VaffleTab <CR>

