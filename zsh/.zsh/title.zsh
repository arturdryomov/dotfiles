autoload -U add-zsh-hook
add-zsh-hook precmd update_terminal_title

update_terminal_title() {
  print -Pn "\e]2;%~\a"
}
