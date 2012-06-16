# Include plugin

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configuration

## Hignlight brackets 
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

## Do not underline pathes
ZSH_HIGHLIGHT_STYLES[path]=none

## Yellow patterns
ZSH_HIGHLIGHT_STYLES[globbing]="fg=yellow"
