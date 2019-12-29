#!/bin/bash
set -eou pipefail

# Git

ln -sf git/.gitconfig ${HOME}/.
ln -sf git/.gitignore ${HOME}/.

# Vim

ln -sf vim/.gvimrc ${HOME}/.
ln -sf vim/.vim ${HOME}/.
ln -sf vim/.vimrc ${HOME}/.

curl --location "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" --output "${HOME}/.vim/autoload/plug.vim" --create-dirs

mkdir -p vim/.vim/history/

# Zsh

ln -sf zsh/.zsh ${HOME}/.
ln -sf zsh/.zshrc ${HOME}/.
