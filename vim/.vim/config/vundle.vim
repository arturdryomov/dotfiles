filetype off

set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()


Bundle "gmarik/vundle"

Bundle "ervandew/supertab"
Bundle "Lokaltog/vim-powerline"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "sjl/gundo.vim"
Bundle "superjudge/tasklist-pathogen"
Bundle "tpope/vim-fugitive"
Bundle "tyru/nextfile.vim"

" Colorschemes
Bundle "chriskempson/tomorrow-theme", {"rtp": "vim/"}

" Syntax
Bundle "tfnico/vim-gradle"
Bundle "tpope/vim-markdown"
Bundle "vim-scripts/proguard.vim"


filetype plugin on
