set lines=30 columns=85             " Set window size

set guioptions-=m                   " Remove menubar
set guioptions-=T                   " Remove toolbar

set guioptions-=L                   " Remove left split scrollbar
set guioptions-=R                   " Remove right split scrollbar
set guioptions-=l                   " Remove left scrollbar
set guioptions-=r                   " Remove right scrollbar

if (hostname() == "desktop")        " Configure font
  set guifont=Monospace\ 9
endif

if (hostname() == "netbook")
  set guifont=Droid\ Sans\ Mono\ 8
endif
