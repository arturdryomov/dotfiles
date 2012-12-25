all:
	+make help

help:
	@echo "Run as \`make <target>' where <target> is:"
	@echo "  install - install config files"
	@echo "  clean   - clean config files"

install:
	+make clean
	@ln -sf $(CURDIR)/vim/.vimrc $(HOME)/.
	@ln -sf $(CURDIR)/vim/.gvimrc $(HOME)/.
	@ln -sf $(CURDIR)/vim/.vim $(HOME)/.
	@ln -sf $(CURDIR)/zsh/.zshrc $(HOME)/.
	@ln -sf $(CURDIR)/zsh/.zsh $(HOME)/.
	@ln -sf $(CURDIR)/tmux/.tmux.conf $(HOME)/.
	@ln -sf $(CURDIR)/git/.gitconfig $(HOME)/.
	@ln -sf $(CURDIR)/git/.gitignore $(HOME)/.
	+make post-install

clean:
	@rm -rf $(HOME)/.vimrc
	@rm -rf $(HOME)/.gvimrc
	@rm -rf $(HOME)/.vim
	@rm -rf $(HOME)/.zshrc
	@rm -rf $(HOME)/.zsh
	@rm -rf $(HOME)/.tmux
	@rm -rf $(HOME)/.gitconfig
	@rm -rf $(HOME)/.gitignore

post-install:
	+make vim-configure

vim-configure:
	+make vim-vundle
	+make vim-powerline

vim-vundle:
	@rm -rf ${CURDIR}/vim/.vim/bundle/vundle
	@git clone git://github.com/gmarik/vundle.git ${CURDIR}/vim/.vim/bundle/vundle
	@vim +BundleInstall! +quitall

vim-powerline:
	@rm -rf ${CURDIR}/vim/.vim/bundle/vim-powerline/autoload/Powerline/Colorschemes
	@git clone git://gist.github.com/1665748.git ${CURDIR}/vim/.vim/bundle/vim-powerline/autoload/Powerline/Colorschemes
