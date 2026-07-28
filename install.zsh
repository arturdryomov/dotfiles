#!/usr/bin/env zsh
setopt ERR_EXIT NO_UNSET PIPE_FAIL

function install() {
  local PATH_SRC="${1}"
  local PATH_DSC="${2}"

  mkdir -p "$(dirname "${PATH_DSC}")"
  ln -sfn "${PATH_SRC}" "${PATH_DSC}"
}

# Git

install "${PWD}/git/config" "${XDG_CONFIG_HOME}/git/config"
install "${PWD}/git/ignore" "${XDG_CONFIG_HOME}/git/ignore"

# Ghostty

install "${PWD}/ghostty/config" "${XDG_CONFIG_HOME}/ghostty/config"

# Vim

install "${PWD}/vim/.vimrc" "${XDG_CONFIG_HOME}/vim/vimrc"
install "${PWD}/vim/.vim/pack" "${XDG_CONFIG_HOME}/vim/pack"
install "${PWD}/vim/.vim/plugin" "${XDG_CONFIG_HOME}/vim/plugin"

## See "vim/.vimrc"

mkdir -p "${XDG_STATE_HOME}/vim"

# Zsh

install "${PWD}/zsh/.zshenv" "${HOME}/.zshenv"
install "${PWD}/zsh/.zshrc" "${XDG_CONFIG_HOME}/zsh/.zshrc"
install "${PWD}/zsh/.zsh" "${XDG_CONFIG_HOME}/zsh/.zsh"

## See "zsh/.zsh/unix/completion.zsh"

mkdir -p "${XDG_CACHE_HOME}/zsh"
mkdir -p "${XDG_DATA_HOME}/zsh"
