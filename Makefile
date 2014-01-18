all:
	@echo "Usage: make [target]"
	@echo "  install   install configs"
	@echo "  clean     clean configs"

install:
	@ln -sf $(CURDIR)/vim/.vimrc $(HOME)/.
	@ln -sf $(CURDIR)/vim/.gvimrc $(HOME)/.
	@ln -sf $(CURDIR)/vim/.vim $(HOME)/.
	@ln -sf $(CURDIR)/zsh/.zshrc $(HOME)/.
	@ln -sf $(CURDIR)/zsh/.zsh $(HOME)/.
	@ln -sf $(CURDIR)/tmux/.tmux.conf $(HOME)/.
	@ln -sf $(CURDIR)/git/.gitconfig $(HOME)/.
	@ln -sf $(CURDIR)/git/.gitignore $(HOME)/.
	@ln -sf $(CURDIR)/python/.pythonrc.py $(HOME)/.
	+make post-install

post-install:
	+make vim-bundle-install

vim-bundle-install:
	@git clone git://github.com/gmarik/vundle.git ${CURDIR}/vim/.vim/bundle/vundle
	@vim +BundleInstall! +quitall

clean:
	@rm -rf $(HOME)/.vimrc
	@rm -rf $(HOME)/.gvimrc
	@rm -rf $(HOME)/.vim
	@rm -rf $(HOME)/.zshrc
	@rm -rf $(HOME)/.zsh
	@rm -rf $(HOME)/.tmux.conf
	@rm -rf $(HOME)/.gitconfig
	@rm -rf $(HOME)/.gitignore
	@rm -rf $(HOME)/.pythonrc.py
	+make vim-bundle-clean

vim-bundle-clean:
	@rm -rf ${CURDIR}/vim/.vim/bundle/vundle
