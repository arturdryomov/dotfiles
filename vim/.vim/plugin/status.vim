" Show status at all times
set laststatus=2

let s:statusmodes = {
  \ "c": "command",
  \ "i": "insert",
  \ "n": "normal",
  \ "R": "replace",
  \ "s": "select",
  \ "S": "select",
  \ "\<C-s>": "select",
  \ "t": "terminal",
  \ "v": "visual",
  \ "V": "visual",
  \ "\<C-v>": "visual"
\}

function! FormatStatusSegment(segment) abort
  return printf("\u00a0%s\u00a0", a:segment)
endfunction

function! FormatStatusMode() abort
  return toupper(get(s:statusmodes, mode(), mode()))
endfunction

function! FormatStatusFileFlags() abort
  let l:type = empty(&filetype) ? "no type" : &filetype
  let l:encoding = empty(&fileencoding) ? "no encoding" : &fileencoding
  let l:format = empty(&fileformat) ? "no format" : &fileformat

  return join([l:type, l:encoding, l:format], ' | ')
endfunction

set statusline=

" Mode
set statusline+=%#TabLineSel#
set statusline+=%{FormatStatusSegment(FormatStatusMode())}
set statusline+=%*

" File path
set statusline+=%{%&modified?'%#DiagnosticFloatingWarn#':'%#StatusLine#'%}
set statusline+=%{%FormatStatusSegment('%f')%}
set statusline+=%*

" Space
set statusline+=%=

" File flags
set statusline+=%{FormatStatusSegment(FormatStatusFileFlags())}

" File line and column
set statusline+=%#TabLineSel#
set statusline+=%{%FormatStatusSegment('%3l:%3c')%}
set statusline+=%*
