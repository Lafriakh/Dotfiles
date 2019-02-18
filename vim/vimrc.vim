source $HOME/.dotfiles/vim/plugins.vim

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let mapleader = ","

source $HOME/.dotfiles/vim/plugins_settings.vim
source $HOME/.dotfiles/vim/settings.vim
source $HOME/.dotfiles/vim/mappings.vim
source $HOME/.dotfiles/vim/extended.vim
