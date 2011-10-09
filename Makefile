all:
	make help

help:
	@echo "Please run as  \`make <target>' where <target> is:"
	@echo "  install - install config files"
	@echo "  clean   - clean config files"

install:
	make clean
	@echo ":: Installing"
	@ln -sf $(CURDIR)/.vimrc $(HOME)/.
	@ln -sf $(CURDIR)/.vim $(HOME)/.
	@ln -sf $(CURDIR)/.zshrc $(HOME)/.
	@ln -sf $(CURDIR)/.gitconfig $(HOME)/.
	make post-install

post-install:
	@echo ":: Running post-install"
	@python $(CURDIR)/.vim/update.py
	@mkdir -p ${CURDIR}/.vim/spell
	@wget -N -P ${CURDIR}/.vim/spell ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.spl
	@wget -N -P ${CURDIR}/.vim/spell ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.sug

clean:
	@echo ":: Cleaning"
	@rm -rf $(HOME)/.vimrc
	@rm -rf $(HOME)/.vim
	@rm -rf $(HOME)/.zshrc
	@rm -rf $(HOME)/.gitconfig
