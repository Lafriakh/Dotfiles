call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ervandew/supertab'
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mileszs/ack.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  
  Plug 'w0rp/ale'
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  """"""""""""""
  " Languages
  """"""""""""""
  " go
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
  " php
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'StanAngeloff/php.vim'

  " Color
  Plug 'lafriakh/black-white.vim'
  Plug 'morhetz/gruvbox'
  Plug 'tomasr/molokai'
  Plug 'john2x/flatui.vim'
call plug#end()
