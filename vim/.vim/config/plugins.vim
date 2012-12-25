" Aware SuperTab context completion
let g:SuperTabDefaultCompletionType = "context"

" Disable auto Clang popup
let g:clang_complete_auto = 0
" Show Clang errors in the QuickFix
let g:clang_complete_copen = 1
" Use libclang instead of clang/clang++
let g:clang_use_library = 1

" Zenburn Powerline colorscheme
let g:Powerline_colorscheme = "zenburn"
" More beauty to the Powerline with patched fonts
let g:Powerline_symbols = "fancy"
" Show trailing spaces indicator
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
" Switch modes in Powerline faster
set timeout timeoutlen=1000 ttimeoutlen=50
