#!/usr/bin/env python
# -*- coding: utf-8 -*-

# vim-bundle-mate script by jungo
# https://github.com/jungo-git/vim-bundle-mate
# Simplified by Ming

# Call some help
from os import path
from shutil import rmtree
from subprocess import Popen

# Repos list
# Format: (repository, plugin name)
git = (
  ('https://github.com/msanders/snipmate.vim.git','snipmate'),
  ('https://github.com/scrooloose/nerdcommenter.git','nerd-commenter'),
  ('https://github.com/scrooloose/nerdtree.git','nerd-tree'),
  ('https://github.com/wzzrd/vim-matchit.git','matchit'),
  ('https://github.com/sjl/gundo.vim.git','gundo'),
  ('https://github.com/tyru/nextfile.vim.git','nextfile'),
  ('https://github.com/godlygeek/tabular.git','tabular'),
  ('https://github.com/ervandew/supertab.git', 'supertab'),
  ('https://github.com/Rip-Rip/clang_complete.git', 'clang'),
  ('https://github.com/superjudge/tasklist-pathogen.git', 'tasklist'),
)

# Code about work with Git
def git_work():
  global git
  for arg in git:
    # Remove old directories 
    try:
      gitpath = path.join('bundle', arg[1])
      rmtree(gitpath)
      print('Removed old dir:', gitpath)
    except OSError:
      pass
    # Clone plugins with Git
    cmd = 'git clone ' + arg[0] + ' ' + gitpath
    Popen(cmd, shell=True).communicate()
    # Remove Git information
    print('Removing .git folder in', gitpath)
    try:
      rmtree(path.join(gitpath, '.git'))
    except OSError:
      pass
    print()

# Main block
git_work()
