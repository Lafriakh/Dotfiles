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
" => Deoplete
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['phpcd', 'omni']

""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
map <leader>l :Buffers<cr>

" Start searching from the root directory.
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
command! ProjectAg execute 'Ag' s:find_git_root()

map <c-p> :ProjectFiles <cr>

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
set completeopt-=preview

""""""""""""""""""""""""""""""
" => Bufferline
""""""""""""""""""""""""""""""
let g:bufferline_echo = 1

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

""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""
let g:lightline = {
  \   'colorscheme': 'solarized',
  \   'active': {
  \     'left':[ 
  \       [ 'mode', 'paste' ],
  \       [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }
" set showtabline=2  " Show tabline
set laststatus=2
set guioptions-=e  " Don't use GUI tabline
set noshowmode
