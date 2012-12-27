" Easy indent for blocks with < and >
vmap < <gv
vmap > >gv

" Add empty line without insert mode
map <S-l> o<Esc>
map <C-l> O<Esc>

" Show files tree with F5
map <F5> <Esc>:NERDTreeToggle<CR>

" Enable and disable spellcheck with F6 and F7
map <F6> <Esc>:setlocal spell spelllang=ru_yo,en<CR>
map <F7> <Esc>:setlocal nospell<CR>

" Show invisible characters with F8
map <F8> <Esc>:set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Save file as root with :W
command! -nargs=0 -bang W :silent! w !sudo tee % &>/dev/null

" Remove trailing whitespaces
map <F9> <ESC>:%s/\s\+$//e<CR>
