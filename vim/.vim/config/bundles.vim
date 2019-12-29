call plug#begin('~/.vim/plug')

Plug 'ervandew/supertab'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
Plug 'tyru/nextfile.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Syntax
Plug 'udalov/kotlin-vim'

call plug#end()
