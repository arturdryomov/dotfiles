set shortmess=I           " Remove welcome screen

set laststatus=2          " Always show status line
set title                 " Show filename in the window title
set shortmess+=a          " Use nice Vim prompts and flags
set ruler                 " Show current position

set wildmode=longest,full " Configure completion in command line
set wildmenu              " Use nice completion in command line (still miss Zsh-like)

syntax on                 " Enable syntax highlighting
set number                " Enable line numbers
set cursorline            " Highlight cursor line position
set colorcolumn=80        " Highlight long lines

set t_Co=256              " MOAR colors

colorscheme zenburn       " Zenburn as colorscheme
