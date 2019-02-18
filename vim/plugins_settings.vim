"""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""
"" NERDTree configuration
let g:NERDTreeWinSize=40
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

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
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_map = '<c-f>'
" map <leader>j :CtrlP<cr>
" map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|tmp|target|dist)|(\.(swp|ico|git|svn))$'


""""""""""""""""""""""""""""""
" => lightline
""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
" just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
" show the index for each buffer
" let g:airline#extensions#tabline#buffer_nr_show = 1

""""""""""""""""""""""""""""""
" => tagbar
""""""""""""""""""""""""""""""
nmap <silent> <F4> :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" => Ale
""""""""""""""""""""""""""""""
let g:ale_sign_error = '✗✗'
let g:ale_sign_style_error = '✠✠'
let g:ale_sign_warning = '∆∆'
let g:ale_sign_style_warning = '≈≈'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
\   'php': ['php'],
\}
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1

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
autocmd FileType go nmap <leader>tt  <Plug>(go-test-func)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

""""""""""""""""""""""""""""""
" => indentLine
""""""""""""""""""""""""""""""
let g:indentLine_char = '┆'
" this for code indented with tabs
" set list lcs=tab:\⎸\

""""""""""""""""""""""""""""""
" => Deoplete
""""""""""""""""""""""""""""""
set completeopt=longest,menuone " auto complete setting
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns['default'] = '\h\w*'
let g:deoplete#omni#input_patterns = {}
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1

""""""""""""""""""""""""""""""
" => vim json
""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

""""""""""""""""""""""""""""""
" => vim php-cs-fixer
""""""""""""""""""""""""""""""
let g:php_cs_fixer_rules = "@PSR2"

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pff :call PhpCsFixerFixFile()<CR>
" autosave
" autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

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
" => tern
""""""""""""""""""""""""""""""
"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'php',
                \ 'html'
                \ ]

""""""""""""""""""""""""""""""
" => UltiSnips
""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.dotfiles/vim/UltiSnips']

""""""""""""""""""""""""""""""
" => vim-javascript
""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
