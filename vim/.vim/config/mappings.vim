" < and > - easy indent for blocks
vmap < <gv
vmap > >gv

" o and O - empty line without insert mode
map <S-l> o<Esc>
map <C-l> O<Esc>

" F5 - show files tree
map <F5> <Esc>:NERDTreeToggle<CR>

" F6, F7 - Enable and disable spellcheck
map <F6> <Esc>:setlocal spell spelllang=ru_yo,en_us<CR>
map <F7> <Esc>:setlocal nospell<CR>

" F8 - show invisible characters
map <F8> <Esc>:set list!<CR>
set listchars=tab:▸\ ,eol:¬
