" Files

"" Change default encoding to UTF-8
set encoding=utf-8

"" Avoid backup files
set nobackup

"" Avoid swap files
set noswapfile

"" Avoid undo files
set noundofile

" Mode

"" Change switch timings
set timeout timeoutlen=1000 ttimeoutlen=50

" Mode: Insert

"" Enable backspace
set backspace=indent,eol,start

"" Show completion options as menu
set completeopt=menu,menuone

" Mode: Normal

"" Insert new line forward with Shift+L
map <S-l> o<Esc>

"" Insert new line backward with Ctrl+L
map <C-l> O<Esc>

" Mode: Visual

"" Keep selection on indentation
vmap < <gv
vmap > >gv
