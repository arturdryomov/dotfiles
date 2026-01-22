# R

autoload -Uz vcs_info

zstyle ":vcs_info:*" enable git
zstyle ":vcs_info:git:*" formats "%b"

precmd() {
  vcs_info

  RPROMPT="${vcs_info_msg_0_:+%B[± ${vcs_info_msg_0_}]%b}"
}

ZLE_RPROMPT_INDENT=0

# L

PROMPT="%B[%~] → %b"

# Spelling

SPROMPT="Change %B%R%b to %B%r%b?: "

