" NOTE: This plugin does note work well.

let g:clang_exec = 'clang'
let g:clang_format_exec = 'clang-format'
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'

let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0

let g:clang_use_library = 1
"if g:is_win
"  let g:clang_library_path = 'C:\Program Files\LLVM\lib\libclang.lib'
"else
  "let g:clang_library_path = '/usr/lib/llvm/lib/libclang.so'
"endif
let g:clang_format_auto = 1
let g:clang_check_syntax_auto = 1
let g:clang_format_style = "Google"
" Style can be LLVM, Google, Chromium, Mozilla, WebKit
