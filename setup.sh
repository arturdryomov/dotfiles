#!/bin/sh

function link {
  source="$PWD/$1"
  target="$HOME/.$1"
  ln -sf $source $target
}

if [ -f /bin/zsh ]; then
  echo ":: Creating link for Z shell config"
  link zshrc
fi

if [ -f /usr/bin/vim ]; then
  echo ":: Creating link for Vim config"
  link vim
  link vimrc
  echo ":: Downloading Vim plugins"
  cd vim && python update.py
fi
