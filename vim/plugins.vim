call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Plug 'majutsushi/tagbar'
  " Plug 'Yggdroot/indentLine'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'terryma/vim-multiple-cursors'
  " Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ervandew/supertab'
  Plug 'elzr/vim-json', {'for' : 'json'}
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mileszs/ack.vim'
  " Plug 'w0rp/ale'
  " Plug 'mhinz/vim-startify'
  Plug 'easymotion/vim-easymotion'
  " Plug 'ap/vim-css-color'
  " Plug 'c9s/helper.vim'
  " Plug 'c9s/treemenu.vim'
  " Plug 'c9s/hypergit.vim'
  Plug 'tpope/vim-markdown'
  Plug 'vim-scripts/nginx.vim'
   
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'neomake/neomake'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  """"""""""""""
  " Languages
  """"""""""""""
  " go
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
   
  " php
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'jwalton512/vim-blade'
   
  " Color
  Plug 'fatih/molokai'
  Plug 'morhetz/gruvbox'
  Plug 'altercation/vim-colors-solarized'
  Plug 'reedes/vim-colors-pencil'
  Plug 'olivertaylor/vacme'
  Plug 'igungor/schellar'
  Plug 'plan9-for-vimspace/acme-colors'
  Plug 'robertmeta/nofrils'

  " My theme
  Plug '$HOME/.vim/lacme'
call plug#end()
