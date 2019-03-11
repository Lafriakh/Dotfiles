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
  Plug 'elzr/vim-json', {'for' : 'json'}
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mileszs/ack.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-markdown'
  Plug 'vim-scripts/nginx.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'vim-syntastic/syntastic'
  Plug 'Valloric/YouCompleteMe'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  
  Plug 'baverman/vial'
  Plug 'baverman/vial-http'
  Plug 'bling/vim-bufferline'
  Plug 'cespare/vim-toml'

  """"""""""""""
  " Languages
  """"""""""""""
  " go
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
   
  " php
  Plug 'shawncplus/phpcomplete.vim'
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'jwalton512/vim-blade'
   
  " Color
  Plug 'lafriakh/black-white.vim'
call plug#end()
