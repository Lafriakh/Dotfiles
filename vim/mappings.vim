" replace : with ; in commands
nnoremap ; :

" Some useful quickfix shortcuts for quickfix
map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>a :cclose<CR>

" put quickfix window always to the bottom
autocmd FileType qf wincmd J
augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <silent> <leader>q :qa!<CR>

" Center the screen
nnoremap <space> zz

" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" close current buffer
nnoremap <leader>c :bd<CR>
nnoremap <leader>term :bd!<CR>

" Close all but the current one
nnoremap <leader>o :only<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Visual linewise up and down by default (and use gj gk to go quicker)
noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

" Exit on jk
imap jj <Esc>

" Source (reload configuration)
" nnoremap <silent> <F5> :source $MYNVIMRC<CR>

nnoremap <F6> :setlocal spell! spell?<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when moving up and down
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" Act like D and C
nnoremap Y y$

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h

" Do not show stupid q: window
map q: :q

" move line up or down
" nnoremap <silent> <c-s-k> :m-2<CR>
" nnoremap <silent> <c-s-j> :m+1<CR>
" inoremap <silent> <c-s-k> <Esc>:m-2<CR>==gi
" inoremap <silent> <c-s-j> <Esc>:m+1<CR>==gi

" Move between buffers with Shift + arrow key...
nnoremap <silent> <tab> :bnext<cr>
nnoremap <silent> <s-tab> :bprevious<cr>
" close current buffer
nnoremap <silent> <C-w> :bd<cr>

" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Moves cursor & screen up ½ page
noremap J 25j
noremap K 25k

" ctrlp and ctags
nnoremap <leader>ff :CtrlPRoot<cr>
nnoremap <leader>. :CtrlPTag<cr>

" emoji
nnoremap <leader>pe :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<cr>

" exit form terminal in nvim
tnoremap jk <C-\><C-n>



" Don't move on * I'd use a function for this but Vim clobbers the last search
" when you're in a function so fuck it, practicality beats purity.
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
if !has('gui_running')
    set notimeout
    set ttimeout
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Show the functions in the current buffer.
nnoremap <Leader>fu :CtrlPFunky<Cr>

" Show the opened buffers.
nnoremap <Leader>, :CtrlPBuffer<CR>
