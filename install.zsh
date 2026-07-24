#!/usr/bin/env zsh
setopt ERR_EXIT NO_UNSET PIPE_FAIL

# Git

GIT_CONFIG_HOME="${XDG_CONFIG_HOME}/git"

mkdir -p "${GIT_CONFIG_HOME}"

ln -sf "${PWD}/git/config" "${GIT_CONFIG_HOME}/config"
ln -sf "${PWD}/git/ignore" "${GIT_CONFIG_HOME}/ignore"

# Vim

VIM_CONFIG_HOME="${XDG_CONFIG_HOME}/vim"
VIM_STATE_HOME="${XDG_STATE_HOME}/vim"

mkdir -p "${VIM_CONFIG_HOME}"
mkdir -p "${VIM_STATE_HOME}"

ln -sf "${PWD}/vim/.vimrc" "${VIM_CONFIG_HOME}/vimrc"
ln -sf "${PWD}/vim/.vim/pack" "${VIM_CONFIG_HOME}/pack"
ln -sf "${PWD}/vim/.vim/plugin" "${VIM_CONFIG_HOME}/plugin"

# Zsh

ZSH_CACHE_HOME="${XDG_CACHE_HOME}/zsh"
ZSH_CONFIG_HOME="${XDG_CONFIG_HOME}/zsh"
ZSH_DATA_HOME="${XDG_DATA_HOME}/zsh"

mkdir -p "${ZSH_CACHE_HOME}"
mkdir -p "${ZSH_CONFIG_HOME}"
mkdir -p "${ZSH_DATA_HOME}"

ln -sf "${PWD}/zsh/.zshenv" "${HOME}/.zshenv"
ln -sf "${PWD}/zsh/.zshrc" "${ZSH_CONFIG_HOME}/.zshrc"
ln -sf "${PWD}/zsh/.zsh" "${ZSH_CONFIG_HOME}/.zsh"

# Ghostty

GHOSTTY_CONFIG_HOME="${XDG_CONFIG_HOME}/ghostty"

mkdir -p "${GHOSTTY_CONFIG_HOME}"

ln -sf "${PWD}/ghostty/config" "${GHOSTTY_CONFIG_HOME}/config"
