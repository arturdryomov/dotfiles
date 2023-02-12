set nocompatible

call plug#begin('~/.vim/plug')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

call plug#end()
