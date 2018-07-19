call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
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
Plug 'terryma/vim-smooth-scroll'
Plug 'danro/rename.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'junegunn/vim-emoji'
Plug 'ervandew/supertab'
Plug 'tacahiroy/ctrlp-funky'
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
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
Plug 'captbaritone/better-indent-support-for-php-with-html'
" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
" javascript
" Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'posva/vim-vue'

" markdown
Plug 'tpope/vim-markdown'
" nginx
Plug 'vim-scripts/nginx.vim'

" php
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'arnaud-lb/vim-php-namespace'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" Plug 'shawncplus/phpcomplete.vim'
" Plug 'dsawardekar/wordpress.vim'
" Plug 'StanAngeloff/php.vim'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

"" Color
" Plug 'tomasr/molokai'
Plug 'fatih/molokai'
" Plug 'lafriakh/lafriakh.vim'
" Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'flazz/vim-colorschemes'
" Plug 'roosta/srcery'
" Plug 'vim-scripts/eclipse.vim'
" Plug 'zcodes/vim-colors-basic'
" Plug 'AlessandroYorba/Sierra'
Plug 'nanotech/jellybeans.vim'
Plug 'jacoborus/tender.vim'
Plug 'cocopon/iceberg.vim'
Plug 'endel/vim-github-colorscheme'
Plug 'Badacadabra/vim-archery'

call plug#end()
