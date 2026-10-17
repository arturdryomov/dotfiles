# R

autoload -Uz add-zsh-hook vcs_info

zstyle ":vcs_info:*" enable git
zstyle ":vcs_info:git:*" formats "%b"
zstyle ":vcs_info:git:*" actionformats "%b|%a"

function format_prompt_r() {
  vcs_info

  RPROMPT="${vcs_info_msg_0_:+%B[± ${vcs_info_msg_0_}]%b}"
}

add-zsh-hook precmd format_prompt_r

ZLE_RPROMPT_INDENT=0

# L

PROMPT="%B[%~] → %b"

# Spelling

SPROMPT="Change %B%R%b to %B%r%b?: "
