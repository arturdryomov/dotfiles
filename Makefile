all:
	make help

help:
	@echo "Please run as \`make <target>' where <target> is:"
	@echo "  install - install config files"
	@echo "  clean   - clean config files"

install:
	make clean
	@echo ":: Installing"
	@ln -sf $(CURDIR)/.vimrc $(HOME)/.
	@ln -sf $(CURDIR)/.gvimrc $(HOME)/.
	@ln -sf $(CURDIR)/.vim $(HOME)/.
	@ln -sf $(CURDIR)/.zshrc $(HOME)/.
	@ln -sf $(CURDIR)/.zsh $(HOME)/.
	@ln -sf $(CURDIR)/.tmux.conf $(HOME)/.
	@ln -sf $(CURDIR)/.gitconfig $(HOME)/.
	@ln -sf $(CURDIR)/.gitignore_global $(HOME)/.
	make post-install

clean:
	@echo ":: Cleaning"
	@rm -rf $(HOME)/.vimrc
	@rm -rf $(HOME)/.gvimrc
	@rm -rf $(HOME)/.vim
	@rm -rf $(HOME)/.zshrc
	@rm -rf $(HOME)/.zsh
	@rm -rf $(HOME)/.tmux
	@rm -rf $(HOME)/.gitconfig
	@rm -rf $(HOME)/.gitignore_global

post-install:
	@echo ":: Running post-install"
	make configure-vim

configure-vim:
	@echo ":: Configure Vim"
	@mkdir -p ${CURDIR}/.vim/spell
	@wget -N -P ${CURDIR}/.vim/spell ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.spl
	@wget -N -P ${CURDIR}/.vim/spell ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.sug
	@rm -rf ${CURDIR}/.vim/bundle/vundle
	@git clone git://github.com/gmarik/vundle.git ${CURDIR}/.vim/bundle/vundle
	@vim +BundleInstall! +qall
	@rm -rf ${CURDIR}/.vim/bundle/vim-powerline/autoload/Powerline/Colorschemes
	@git clone git://gist.github.com/1665748.git ${CURDIR}/.vim/bundle/vim-powerline/autoload/Powerline/Colorschemes
