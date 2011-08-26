all:
	make help

help:
	@echo "Please run as  \`make <target>' where <target> is:"
	@echo "  install - install config files"
	@echo "  clean   - clean config files"

install:
	make clean
	@echo ":: Installing config files"
	@ln -sf $(CURDIR)/.vimrc $(HOME)/.
	@ln -sf $(CURDIR)/.vim $(HOME)/.
	@ln -sf $(CURDIR)/.zshrc $(HOME)/.
	make post-install

post-install:
	@echo ":: Running post-install"
	@python $(CURDIR)/.vim/update.py

clean:
	@echo ":: Removing old config files"
	@rm -rf $(HOME)/.vimrc
	@rm -rf $(HOME)/.vim
	@rm -rf $(HOME)/.zshrc
