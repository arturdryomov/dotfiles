" SuperTab

" Aware context completion
let g:SuperTabDefaultCompletionType = "context"


" Powerline

"" Show trailing spaces indicator
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
"" Switch modes in Powerline faster
set timeout timeoutlen=1000 ttimeoutlen=50
