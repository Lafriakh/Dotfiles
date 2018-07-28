all: sync
sync:
	rsync -r ~/.bashrc ~/.dotfiles/.bashrc
	rsync -r ~/.bash_aliases ~/.dotfiles/.bash_aliases
	rsync -r ~/.vimrc ~/.dotfiles/.vimrc
	rsync -r ~/.vim ~/.dotfiles --exclude=.git --exclude=plugged --exclude=gutentags
restore:
	rsync -r ~/.dotfiles/.bashrc ~/.bashrc
	rsync -r ~/.dotfiles/.bash_aliases ~/.bash_aliases
	rsync -r ~/.dotfiles/.vim/ ~/.vim/
	rsync -r ~/.dotfiles/.vimrc ~/.vimrc
