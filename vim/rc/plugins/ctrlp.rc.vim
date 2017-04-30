let g:ctrlp_user_command = 'files -a %s'
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

nnoremap <silent> <C-o> :let g:cpsm_match_empty_query = 0<CR>:CtrlPMRU<CR>
nnoremap <silent> <C-p> :let g:cpsm_match_empty_query = 1<CR>:CtrlP<CR>
