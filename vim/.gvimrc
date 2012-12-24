set lines=30 columns=100 " Set window size

set guioptions-=T        " Remove toolbar

set guioptions-=L        " Remove left split scrollbar
set guioptions-=R        " Remove right split scrollbar
set guioptions-=l        " Remove left scrollbar
set guioptions-=r        " Remove right scrollbar

if (hostname() == "desktop")
  set guifont=Monospace\ 9
elseif (hostname() == "netbook")
  set guifont=Droid\ Sans\ Mono\ 8
endif
