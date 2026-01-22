#!/bin/bash
set -eou pipefail

# Git

ln -sf ${PWD}/git/.gitconfig ${HOME}/.
ln -sf ${PWD}/git/.gitignore ${HOME}/.

# Vim

ln -sf ${PWD}/vim/.vim ${HOME}/.
ln -sf ${PWD}/vim/.vimrc ${HOME}/.

# Zsh

ln -sf ${PWD}/zsh/.zsh ${HOME}/.
ln -sf ${PWD}/zsh/.zshrc ${HOME}/.
