"" Hide intro screen
"" Show short messages
set shortmess=aI

" Title

"" Use file name and file path as title
set title

" Content

"" Hide current mode
set noshowmode

"" Hide current action
set noshowcmd

"" Show line numbers
set number

"" Show column at 100 symbols
set colorcolumn=100

"" Change wrapping from characters to words
set linebreak

"" Show file tree
map <Leader>t :NERDTreeToggle<cr>

"" Show special characters
map <Leader>c :setlocal invlist<cr>
set listchars=tab:\\u2023\ ,eol:\\u23ce,nbsp:\\u23b5,lead:\\u2022,trail:\\u2022

"" Show spellcheck
map <Leader>l :setlocal invspell<cr>
set spelllang=en_us

"" Enable highlighting
syntax enable

"" Change highlighting theme
colorscheme Tomorrow-Night

"" Enable mouse navigation
set mouse=a

"" Hide mouse when typing
set mousehide

"" Change scroll buffer to 5 lines
set scrolljump=5 scrolloff=5

" Command Line

"" Use menu for completion instead of inline changes
set wildmenu

"" Use popup menu instead of options enumeration
set wildoptions=pum

"" Change popup menu to 20 entries
set pumheight=20
