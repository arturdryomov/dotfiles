# Colors

## https://unix.stackexchange.com/a/147
## https://unix.stackexchange.com/a/108840
## https://unix.stackexchange.com/a/269085

() {
  local color_blue=4

  local style_setup="${terminfo[bold]}$(echoti setaf ${color_blue})"
  local style_reset="${terminfo[sgr0]}"

  ## Bold
  export LESS_TERMCAP_md="${style_setup}"
  export LESS_TERMCAP_me="${style_reset}"

  ## Underline
  export LESS_TERMCAP_us="${style_setup}"
  export LESS_TERMCAP_ue="${style_reset}"
}

# History

export LESSHISTFILE="/dev/null"
