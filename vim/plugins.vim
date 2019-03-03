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
  Plug 'itchyny/lightline.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'vim-syntastic/syntastic'
  Plug 'Valloric/YouCompleteMe'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  
  Plug 'baverman/vial'
  Plug 'baverman/vial-http'
  Plug 'bling/vim-bufferline'

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
  Plug 'sickill/vim-monokai'
  " Plug 'fatih/molokai'
  " Plug 'morhetz/gruvbox'
  Plug 'altercation/vim-colors-solarized'
  " Plug 'reedes/vim-colors-pencil'
  " Plug 'olivertaylor/vacme'
  " Plug 'igungor/schellar'
  " Plug 'plan9-for-vimspace/acme-colors'
  " Plug 'robertmeta/nofrils'
call plug#end()
