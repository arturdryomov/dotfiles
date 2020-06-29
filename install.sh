#!/bin/bash
set -eou pipefail

# Git

ln -sf ${PWD}/git/.gitconfig ${HOME}/.
ln -sf ${PWD}/git/.gitignore ${HOME}/.

# Vim

ln -sf ${PWD}/vim/.gvimrc ${HOME}/.
ln -sf ${PWD}/vim/.vim ${HOME}/.
ln -sf ${PWD}/vim/.vimrc ${HOME}/.

curl \
  --location "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
  --output "vim/.vim/autoload/plug.vim" \
  --create-dirs

mkdir -p vim/.vim/history/

# Zsh

ln -sf ${PWD}/zsh/.zsh ${HOME}/.
ln -sf ${PWD}/zsh/.zshrc ${HOME}/.
