  " Common

" Don't keep compatibility with Vi
set nocompatible
" Don't create backups
set nobackup
" Don't create swap files
set noswapfile
" Enable mouse support in console
set mouse=a
  
  " Appearence

" Remove welcome screen and «Press Enter» messages
set shortmess=Ia
" Define type of file
filetype on
" Also check type of file like that
filetype plugin on
" Enable syntax highlighting
syntax on
" Use colorscheme
colorscheme zenburn
" Use more colors
set t_Co=256
" Enable highlighting of cursor position
set cursorline
" Enable line numbering
set number
" Show name of file in window title
set title
" Show status of position
set ruler
" Show status line
set laststatus=2
" Configure wildmenu for completion in cmdline
set wildmode=longest,full 
" Get wildmenu work
set wildmenu

  " Search

" Highlight search word
set hlsearch
" Jump to search word when typing
set incsearch
" Stop search when file is finished
set nowrapscan
" Ignore register of search word
set ignorecase

  " Tabulation

" Spaces instead of tabs
set expandtab
" Tab is two spaces
set tabstop=2
" Number of spaces to use as tab
set shiftwidth=2
" Copy indent from previous line
set autoindent
" Enable smart indent
set smartindent

  " Editing

" Wrapping lines the word, not letters
set linebreak
" Use better scrolling
set scrolljump=5
set scrolloff=5
" Show incomplete command
set showcmd
" Always show mode
set showmode
" Set default encoding
set termencoding=utf-8
" Encodings for autocomplection
set fileencodings=utf-8,cp1251,koi8-r,cp866
" Hide mouse pointer when typing
set mousehide
" Enable Backspace
set backspace=indent,eol,start
" Save file as root
command! -nargs=0 -bang W :silent! w !sudo tee % &>/dev/null
" Show Omni for one match
set completeopt=menuone

  " Mappings

" Enable easy indent for blocks
vmap < <gv
vmap > >gv
" Change current tab with Shift+Tab
map <S-tab> <Esc>:tabnext<cr>
imap <S-tab> <ESC>:tabnext<cr>
" Fast running of Python scripts
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
" Add empty line without insert mode
map <S-l> o<Esc>
map <C-l> O<Esc>

  " Plugins

" Call Pathogen
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
" Configure SuperTab
let g:SuperTabDefaultCompletionType = "context"
" Set dictionary for Pydiction
let g:pydiction_location = '~/.vim/bundle/pydict/complete-dict'

  " GVim
 
" Remove toolbar
set guioptions-=T
" Remove left scrollbar when split
set guioptions-=L
" Remove right scrollbar when split
set guioptions-=R
" Remove left scrollbar
set guioptions-=l
" Remove right scrollbar
set guioptions-=r
" Set font
if (hostname() == "desktop")
  set guifont=Monospace\ 9
elseif (hostname() == "netbook")
  set guifont=Droid\ Sans\ Mono\ 8
endif
" Set window size
if has("gui_running")
  set lines=30 columns=100
endif

