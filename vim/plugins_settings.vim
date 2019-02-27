"""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""
"" NERDTree configuration
let g:NERDTreeWinSize=40
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
map <leader>l :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|tmp|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-f>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_server_python_interpreter = 'python2'
let g:ycm_autoclose_preview_window_after_completion = 1
set completeopt-=preview

""""""""""""""""""""""""""""""
" => Neomake
""""""""""""""""""""""""""""""
let g:neomake_php_phpcs_args_standard = 'PSR2'

autocmd! BufEnter,BufWritePost,InsertLeave,TextChanged * Neomake

""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""
" let g:airline_theme = 'acme'
" let g:airline_powerline_fonts = 0
" let g:airline#extensions#tabline#enabled = 1
" " just show the filename (no path) in the tab
" let g:airline#extensions#tabline#fnamemod = ':t'
" " show the index for each buffer
" " let g:airline#extensions#tabline#buffer_nr_show = 1

""""""""""""""""""""""""""""""
" => golang
""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"

let g:go_auto_type_info = 1
let g:go_info_mode = 'gocode'

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_gocode_unimported_packages = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

""""""""""""""""""""""""""""""
" => vim json
""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

""""""""""""""""""""""""""""""
" => vim php-cs-fixer
""""""""""""""""""""""""""""""
let g:php_cs_fixer_rules = "@PSR2"
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

""""""""""""""""""""""""""""""
" => Gutentags
""""""""""""""""""""""""""""""
" Where to store tag files
let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

""""""""""""""""""""""""""""""
" => ag
""""""""""""""""""""""""""""""
" install this package first: `sudo apt install ack-grep`
if executable('ag')
    let g:ackprg = 'ag --vimgrep --smart-case'
endif

""""""""""""""""""""""""""""""
" => UltiSnips
""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.dotfiles/vim/UltiSnips']
