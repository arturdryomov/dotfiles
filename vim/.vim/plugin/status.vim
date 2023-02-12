" Airline

set timeout timeoutlen=1000 ttimeoutlen=50

let g:airline_theme="tomorrow"

let g:airline_left_sep = ""
let g:airline_right_sep = ""

function AirlineSectionComponentsX()
  let components = []

  let file_type = "%{&filetype}"
  let file_encoding = "%{&fileencoding}"
  let file_format = "%{&fileformat}"

  if !empty(file_type)
    call add(components, file_type)
  endif

  if !empty(file_encoding)
    call add(components, file_encoding)
  endif

  if !empty(file_format)
    call add(components, file_format)
  endif

  return components
endfunction

let g:airline_section_x = join(AirlineSectionComponentsX(), " | ")
let g:airline_section_y = "%3p%%"
let g:airline_section_z = "%3l:%c"


call airline#parts#define_raw("file", "%f")

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = ["indent", "trailing"]
let g:airline#extensions#whitespace#symbol = "…"
let g:airline#extensions#whitespace#mixed_indent_format = "at %s"
let g:airline#extensions#whitespace#trailing_format = "at %s"

let g:airline_symbols_ascii = 1
