""" Vim plugins updater
    Works with Git repos of plugins
    Designed for work with Pathogen """

import os
import shutil
import subprocess

vim_path = "~/.vim"

plugins = {
    "snipmate": "git://github.com/msanders/snipmate.vim.git",
    "nerd-commenter": "git://github.com/scrooloose/nerdcommenter.git",
    "nerd-tree": "git://github.com/scrooloose/nerdtree.git",
    "machit": "git://github.com/wzzrd/vim-matchit.git",
    "gundo": "git://github.com/sjl/gundo.vim.git",
    "nextfile": "git://github.com/tyru/nextfile.vim.git",
    "tabular": "git://github.com/godlygeek/tabular.git",
    "supertab": "git://github.com/ervandew/supertab.git",
    "clang": "git://github.com/Rip-Rip/clang_complete.git",
    "tasklist": "git://github.com/superjudge/tasklist-pathogen.git"
}


def remove_old_plugins():
    """ Removes old plugins in Vim folder
        Directories of plugins formed from plugin names """
    for plugin_name in plugins.keys():
        plugin_path = os.path.join(vim_path, "bundle", plugin_name)
        plugin_path = os.path.expanduser(plugin_path)
        shutil.rmtree(plugin_path, ignore_errors=True)


def get_new_plugins():
    """ Clones new plugins into Vim folder
        Directories of plugins formed from plugin names
        Git URLs formed from values of "plugins" dict """
    for plugin_name in plugins.keys():
        plugin_path = os.path.join(vim_path, "bundle", plugin_name)
        plugin_path = os.path.expanduser(plugin_path)
        subprocess.call(["git", "clone", plugins[plugin_name], plugin_path])
        print()


if __name__ == "__main__":
    remove_old_plugins()
    get_new_plugins()
