all: sync
sync:
	rsync -r ~/.bashrc ~/.dotfiles/.bashrc
	rsync -r ~/.bash_aliases ~/.dotfiles/.bash_aliases
	rsync -r ~/.vimrc ~/.dotfiles/.vimrc
	rsync -r ~/.vim ~/.dotfiles --exclude=.git --exclude=plugged --exclude=gutentags
