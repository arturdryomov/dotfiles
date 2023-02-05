# Commands
#
alias grep="grep --color=always"
alias ls="ls --color=always"
alias tree="tree -C"

# "zsh-syntax-highlighting"

## Include brackets
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

## Avoid underlines
ZSH_HIGHLIGHT_STYLES[path]="none"

## Change patterns
ZSH_HIGHLIGHT_STYLES[globbing]="fg=yellow"
