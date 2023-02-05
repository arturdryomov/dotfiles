autoload -Uz vcs_info

# Include Git, nothing else
zstyle ":vcs_info:*" enable git

# Include branch, nothing else
zstyle ":vcs_info:*" formats "%b"

PROMPT="%B[%~]%b "

precmd() {
  RPROMPT="$(_resolve_git_prompt)"
}

function _resolve_git_prompt() {
  git_branch="$(_resolve_git_branch)"

  if [[ -z "${git_branch}" ]]; then
    echo ""
  else
    echo "%B[± ${git_branch}]%b"
  fi
}

function _resolve_git_branch() {
  vcs_info

  echo "${vcs_info_msg_0_}"
}

SPROMPT="Change '%R' to '%r'?: "

# Remove the RPROMPT right indent
ZLE_RPROMPT_INDENT=0
