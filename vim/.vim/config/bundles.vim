if has("vim_starting")
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand("~/.vim/bundle/"))

NeoBundleFetch "shougo/neobundle.vim"

NeoBundle "ervandew/supertab"
NeoBundle "ntpeters/vim-better-whitespace"
NeoBundle "scrooloose/nerdcommenter"
NeoBundle "scrooloose/nerdtree"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tyru/nextfile.vim"
NeoBundle "vim-airline/vim-airline"
NeoBundle "vim-airline/vim-airline-themes"

" Colorschemes
NeoBundle "chriskempson/tomorrow-theme", {"rtp": "vim/"}

" Syntax
NeoBundle "udalov/kotlin-vim"

call neobundle#end()

filetype plugin on

NeoBundleCheck
