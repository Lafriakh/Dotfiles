call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'tacahiroy/ctrlp-funky'
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
" Plug 'itchyny/lightline.vim'
" Plug 'bling/vim-bufferline'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
" Plug 'ap/vim-css-color'
Plug 'c9s/helper.vim'
Plug 'c9s/treemenu.vim'
Plug 'c9s/hypergit.vim'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/nginx.vim'

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
Plug 'zchee/deoplete-go', { 'do': 'make'}
" html
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'
" javascript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/jsdoc-syntax.vim'

" php
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jwalton512/vim-blade'

" Color
Plug 'fatih/molokai'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
call plug#end()
