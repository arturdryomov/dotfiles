# Left prompt
PROMPT="%B[%~] → %b"


# Right prompt

precmd() {
  set_right_prompt
}

function set_right_prompt() {
  git_branch_name=$(git_branch)

  if [ -z ${git_branch_name} ]; then
    export RPROMPT=""
  else
    export RPROMPT="%B[± ${git_branch_name}]%b"
  fi
}

function git_branch() {
  vcs_info

  echo ${vcs_info_msg_0_}
}

## Set up Zsh VCS module
autoload -Uz vcs_info

### Allow only Git information
zstyle ":vcs_info:*" enable git

### Print VCS information only as branch
zstyle ":vcs_info:*" formats "%b"
