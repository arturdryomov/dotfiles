set autoindent
set smartindent

" Spaces
" set expandtab
" set tabstop=N
" set shiftwidth=N
" set softtabstop=-1

" Tabs
" set noexpandtab
" set tabstop=N
" set shiftwidth=0
" set softtabstop=0

set smarttab

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=-1

augroup indentation
  autocmd!
  autocmd FileType go setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=0
  autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=-1
augroup END
