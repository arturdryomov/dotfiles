# Emacs-style navigation
bindkey -e

# Avoid removing all text with ^U (default is "kill-whole-line")
bindkey "^U" backward-kill-line

# Change word navigation to recognize "/", "." and friends
autoload -Uz select-word-style; select-word-style bash
