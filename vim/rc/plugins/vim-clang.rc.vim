let g:clang_vim_exec = 'vim'
let g:clang_exec = 'clang'
let g:clang_format_exec = 'clang-format'
if g:is_nvim
  let g:clang_vim_exec = 'nvim'
endif

let s:path = '/usr/include'
if g:is_win
  " NOTE:
  " [WARNING] Clang(LLVM) should not install in 'C:\Program Files'!
  " [REASON] Contains a space character
  let s:path += expand("C:/App/msys64/usr/include")
endif
let g:clang_dotfile = '.clang'
let g:clang_c_options   = '-std=c11'
let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'
let g:clang_c_completeopt = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

let g:clang_auto = 0 " disable auto completion for vim-clang(use neocomplete)
let g:clang_format_auto = 1
let g:clang_check_syntax_auto = 1
let g:clang_complete_auto = 0
let g:clang_auto_select = 0

let g:clang_format_style = 'Google' " Style can be LLVM, Google, Chromium, Mozilla, WebKit

if execute('!cmake')
 let g:clang_compilation_database = './build'
endif
