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
  " Plug 'elzr/vim-json', {'for' : 'json'}
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mileszs/ack.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-markdown'
  Plug 'ludovicchabant/vim-gutentags'
  " Plug 'vim-syntastic/syntastic'
  " Plug 'Valloric/YouCompleteMe'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  
  " Plug 'bling/vim-bufferline'
  Plug 'cespare/vim-toml'
  Plug 'w0rp/ale'
  " if has('nvim')
  "   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " else
  "   Plug 'Shougo/deoplete.nvim'
  "   Plug 'roxma/nvim-yarp'
  "   Plug 'roxma/vim-hug-neovim-rpc'
  " endif
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

  """"""""""""""
  " Languages
  """"""""""""""
  " go
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
  Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
   
  " php
  " Plug 'shawncplus/phpcomplete.vim'
  " Plug 'stephpy/vim-php-cs-fixer'
  " Plug 'jwalton512/vim-blade'
   
  " Color
  Plug 'lafriakh/black-white.vim'
call plug#end()
