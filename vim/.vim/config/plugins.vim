" SuperTab

" Aware context completion

let g:SuperTabDefaultCompletionType = "context"


" Airline

set timeout timeoutlen=1000 ttimeoutlen=50

let g:airline_left_sep = ""
let g:airline_right_sep = ""

let g:airline_section_x = "%{&filetype} | %{&fenc} | %{&fileformat}"
let g:airline_section_y = "%3p%%"
let g:airline_section_z = "%3l:%c"

call airline#parts#define_raw("file", "%f")

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = ["indent", "trailing"]
let g:airline#extensions#whitespace#symbol = "…"
let g:airline#extensions#whitespace#mixed_indent_format = "at %s"
let g:airline#extensions#whitespace#trailing_format = "at %s"
