all:
	@echo "Usage: make [target]"
	@echo "  install   install configs"
	@echo "  clean     clean configs"

install:
	ln -sf $(CURDIR)/git/.gitconfig $(HOME)/.
	ln -sf $(CURDIR)/git/.gitignore $(HOME)/.
	ln -sf $(CURDIR)/vim/.gvimrc $(HOME)/.
	ln -sf $(CURDIR)/vim/.vim $(HOME)/.
	ln -sf $(CURDIR)/vim/.vimrc $(HOME)/.
	ln -sf $(CURDIR)/zsh/.zsh $(HOME)/.
	ln -sf $(CURDIR)/zsh/.zshrc $(HOME)/.
	+make post-install-vim

post-install-vim:
	git clone --quiet git://github.com/shougo/neobundle.vim.git ${CURDIR}/vim/.vim/bundle/neobundle.vim
	${CURDIR}/vim/.vim/bundle/neobundle.vim/bin/neoinstall
	mkdir -p ${CURDIR}/vim/.vim/history/

clean:
	rm -rf $(HOME)/.gitconfig
	rm -rf $(HOME)/.gitignore
	rm -rf $(HOME)/.gvimrc
	rm -rf $(HOME)/.vim
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.zsh
	rm -rf $(HOME)/.zshrc
	+make post-clean-vim

post-clean-vim:
	rm -rf ${CURDIR}/vim/.vim/bundle/
