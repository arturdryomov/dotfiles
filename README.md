# DotFiles

## Install

1. Clone the repo:

    ```
    git clone --recurse-submodules URL
    ```

1. Link files:

    ```
    source zsh/.zshenv && zsh install.zsh
    ```

## Manage

### Vim

* To install a package:

    ```
    git submodule add --name vim-NAME URL vim/.vim/pack/git/{opt,start}/NAME
    ```

* To remove a package:

    ```
    git rm vim/.vim/pack/git/{opt,start}/NAME
    ```

* To update packages:

    ```
    git submodule update --remote --recursive
    ```
