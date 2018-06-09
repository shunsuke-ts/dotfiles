let g:go_doc_command = "godoc"
let g:go_fmt_command = "goimports"

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1

let g:go_textobj_enabled = 1
let g:go_textobj_include_function_doc = 1

let g:go_jump_to_error = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 1
let g:go_disable_autoinstall = 1
let g:go_dispatch_enabled = 1

let go_template_autocreate = 0
let g:go#use_vimproc = 0


augroup vimgo
  autocmd!
augroup END

