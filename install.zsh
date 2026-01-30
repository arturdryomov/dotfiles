#!/usr/bin/env zsh
setopt ERR_EXIT NO_UNSET PIPE_FAIL

# Git

mkdir -p "${XDG_CONFIG_HOME}/git"

ln -sf "${PWD}/git/.gitconfig" "${XDG_CONFIG_HOME}/git/config"
ln -sf "${PWD}/git/.gitignore" "${XDG_CONFIG_HOME}/git/ignore"

# Vim

mkdir -p "${XDG_CONFIG_HOME}/vim"
mkdir -p "${XDG_STATE_HOME}/vim"

ln -sf "${PWD}/vim/.vimrc" "${XDG_CONFIG_HOME}/vim/vimrc"
ln -sf "${PWD}/vim/.vim/pack" "${XDG_CONFIG_HOME}/vim/pack"
ln -sf "${PWD}/vim/.vim/plugin" "${XDG_CONFIG_HOME}/vim/plugin"

# Zsh

mkdir -p "${XDG_CONFIG_HOME}/zsh"

ln -sf "${PWD}/zsh/.zshenv" "${HOME}/.zshenv"
ln -sf "${PWD}/zsh/.zshrc" "${XDG_CONFIG_HOME}/zsh/.zshrc"
ln -sf "${PWD}/zsh/.zsh" "${XDG_CONFIG_HOME}/zsh/.zsh"
