source ~/.vimrc

"let g:python_host_prog = expand('')
"let g:python3_host_prog = expand('')
let g:is_nvim = 1
let g:config_dir = expand('~/.config/nvim')
if g:is_win
  let g:config_dir = expand('~\AppData\Local\nvim')
  let g:python_host_prog = expand('C:\Program Files\Python36')
  let g:python3_host_prog = expand('C:\Program Files (x86)\Python27')
endif
set background=dark
colorscheme turtles
set guifont=Myrica_M:h12:cSHIFTJIS:qDRAFT
