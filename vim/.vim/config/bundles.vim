if has("vim_starting")
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand("~/.vim/bundle/"))

NeoBundleFetch "shougo/neobundle.vim"

NeoBundle "ervandew/supertab"
NeoBundle "gmarik/sudo-gui.vim"
NeoBundle "ntpeters/vim-better-whitespace"
NeoBundle "scrooloose/nerdcommenter"
NeoBundle "scrooloose/nerdtree"
NeoBundle "sjl/gundo.vim"
NeoBundle "superjudge/tasklist-pathogen"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tyru/nextfile.vim"
NeoBundle "vim-airline/vim-airline"
NeoBundle "vim-airline/vim-airline-themes"

" Colorschemes
NeoBundle "chriskempson/tomorrow-theme", {"rtp": "vim/"}

" Syntax
NeoBundle "markcornick/vim-vagrant"
NeoBundle "tfnico/vim-gradle"
NeoBundle "tpope/vim-markdown"
NeoBundle "vim-scripts/groovy.vim"

call neobundle#end()

filetype plugin on

NeoBundleCheck
