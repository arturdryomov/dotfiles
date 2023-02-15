let g:airline_symbols_ascii = 1
let g:airline_theme="tomorrow"

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = "\u23b5"
let g:airline#extensions#whitespace#checks = ["trailing"]
let g:airline#extensions#whitespace#trailing_format = "%s"

function! AirlineSections()
  call airline#parts#define_raw('file_path', '%f')
  call airline#parts#define_raw('file_type', '%{&filetype}')
  call airline#parts#define_raw('file_encoding', '%{&fileencoding}')
  call airline#parts#define_raw('file_format', '%{&fileformat}')
  call airline#parts#define_raw('file_progress', '%3p%%')
  call airline#parts#define_raw('file_position', '%3l:%3c')

  let g:airline_section_c = airline#section#create_left(['file_path'])
  let g:airline_section_x = airline#section#create_right(['file_type', 'file_encoding', 'file_format'])
  let g:airline_section_y = airline#section#create_right(['file_progress'])
  let g:airline_section_z = airline#section#create_right(['file_position'])
endfunction

autocmd User AirlineAfterInit call AirlineSections()
