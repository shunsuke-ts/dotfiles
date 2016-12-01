let g:vimtex_enabled = 1
let g:vimtex_complete_enabled = 1
let g:vimtex_complete_close_braces = 1
let g:vimtex_complete_recursive_bib = 1
let g:vimtex_complete_img_use_tal = 1
let g:vimtex_fold_enabled = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_latexmk_background = 1
let g:vimtex_latexmk_options = '-pdfdvi'

if g:is_win
  let g:vimtex_view_general_viewer = 'SumatraPDF'
elseif g:is_linux
  let g:vimtex_view_general_viewer = 'evince'
endif

" keymaps
nnoremap <silent> <Space>ll :VimtexCompileToggle<CR>
nnoremap <silent> <Space>lv :VimtexView<CR>
nnoremap <silent> <Space>lc :VimtexClean<CR>
