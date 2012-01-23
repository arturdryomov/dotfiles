#!/usr/bin/env python3

""" Vim plugins updater
    Works with plugins Git repos
    Designed for work with Pathogen """

import os
import shutil
import subprocess


VIM_PATH = "~/.vim"

PLUGINS = {
    "snipmate": "git://github.com/msanders/snipmate.vim.git",
    "nerd-commenter": "git://github.com/scrooloose/nerdcommenter.git",
    "nerd-tree": "git://github.com/scrooloose/nerdtree.git",
    "machit": "git://github.com/wzzrd/vim-matchit.git",
    "gundo": "git://github.com/sjl/gundo.vim.git",
    "nextfile": "git://github.com/tyru/nextfile.vim.git",
    "tabular": "git://github.com/godlygeek/tabular.git",
    "supertab": "git://github.com/ervandew/supertab.git",
    "clang": "git://github.com/Rip-Rip/clang_complete.git",
    "tasklist": "git://github.com/superjudge/tasklist-pathogen.git",
    "surround": "git://github.com/tpope/vim-surround.git",
    "closetag": "git://github.com/vim-scripts/closetag.vim.git",
    "conque": "git://github.com/rygwdn/vim-conque.git",
    "fugitive": "git://github.com/tpope/vim-fugitive.git",
    "powerline": "git://github.com/Lokaltog/vim-powerline.git"
}


def remove_old_plugins():
    """ Removes old plugins in Vim folder """
    for plugin_name in PLUGINS.keys():
        plugin_path = get_plugin_path(plugin_name)
        shutil.rmtree(plugin_path, ignore_errors=True)


def get_new_plugins():
    """ Clones new plugins into Vim folder
        Git URLs formed from values of PLUGINS dict """
    for plugin_name in PLUGINS.keys():
        plugin_path = get_plugin_path(plugin_name)
        subprocess.call(["git", "clone", PLUGINS[plugin_name], plugin_path])
        print()


def get_plugin_path(plugin_name):
    """ Return full plugin path using it's name
        Needs plugin name for input, returns string path
        Uses VIM_PATH variable for construction """
    plugin_path = os.path.join(VIM_PATH, "bundle", plugin_name)
    plugin_path = os.path.expanduser(plugin_path)
    return plugin_path


def main():
    """ Main function of script, runs other functions """
    remove_old_plugins()
    get_new_plugins()


if __name__ == "__main__":
    main()
