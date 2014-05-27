if has("vim_starting")
  set runtimepath+=~/.vim/bundle/neobundle
endif

call neobundle#rc()


NeoBundleFetch "shougo/neobundle.vim"

NeoBundle "ervandew/supertab"
NeoBundle "kien/rainbow_parentheses.vim"
NeoBundle "Lokaltog/vim-powerline"
NeoBundle "scrooloose/nerdcommenter"
NeoBundle "scrooloose/nerdtree"
NeoBundle "sjl/gundo.vim"
NeoBundle "superjudge/tasklist-pathogen"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tyru/nextfile.vim"

" Colorschemes
NeoBundle "chriskempson/tomorrow-theme", {"rtp": "vim/"}

" Syntax
NeoBundle "tfnico/vim-gradle"
NeoBundle "tpope/vim-markdown"


filetype plugin on


NeoBundleCheck
