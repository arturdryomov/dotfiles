set lines=30 columns=85             " Set window size

set guioptions-=m                   " Remove menubar
set guioptions-=T                   " Remove toolbar

set guioptions-=L                   " Remove left split scrollbar
set guioptions-=R                   " Remove right split scrollbar
set guioptions-=l                   " Remove left scrollbar
set guioptions-=r                   " Remove right scrollbar

set noerrorbells                    " Remove bells
set novisualbell                    " Remove visual bells
set vb                              " Remove sound

if has("mac")                       " Set font
  set guifont=Menlo:h12
else
  set guifont=Monospace\ 9
endif
