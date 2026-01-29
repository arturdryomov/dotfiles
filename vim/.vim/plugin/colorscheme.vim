" Use GUI colors instead of TUI colors
set termguicolors

" Disable italic for base16-* colorschemes
let g:tinted_italic = 0

" Detect background in runtime
" https://github.com/vim/vim/issues/869
augroup BackgroundDetect
  autocmd!
  autocmd VimEnter * call echoraw(&t_RB)
  autocmd VimResume * call echoraw(&t_RB)
  autocmd FocusGained * call echoraw(&t_RB)
augroup END

" Change colorscheme depending on background
" The Vim implementation changes from version to version
" https://github.com/vim/vim/pull/18279
augroup BackgroundColorscheme
  autocmd!
  " React to manual changes
  autocmd OptionSet background call s:ChangeColorscheme()
  " React to automatic changes
  autocmd TermResponseAll background call s:ChangeColorscheme()
augroup END

function! s:ChangeColorscheme() abort
  if &background ==# 'dark'
    colorscheme base16-tomorrow-night
  else
    colorscheme base16-tomorrow
  endif
endfunction
