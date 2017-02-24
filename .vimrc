call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'wikitopian/hardmode'
Plug 'easymotion/vim-easymotion'
Plug 'rstacruz/sparkup'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'

call plug#end()

colorscheme spacegray

let NERDTreeShowHidden=1
let g:indentLine_color_term = 239 " gray
let g:fzf_action={ 'ctrl-v': 'vsplit' }
let g:airline_theme='simple'
let NERDTreeQuitOnOpen=1
let loaded_netrwPlugin = 1
let g:jsx_ext_required = 0

let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx': 1,
      \ 'eruby': 1,
      \ }

if executable('ag')
  let g:ackprg = 'ag --vimgrep -i' " use ggreer/the_silver_searcher in ack.vim
endif

nnoremap <leader>h <esc>:call ToggleHardMode()<cr>
nmap <tab> :NERDTreeToggle<cr>
map \t  :FZF<esc>
map \f :Ack
map <enter> <insert><enter> <esc>

inoremap jj <esc>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set ignorecase
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
highlight Search ctermfg=black ctermbg=lightyellow

autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace on :w
autocmd InsertEnter * :let @/="" "remove hls on insert mode
autocmd VimEnter *  NERDTree
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
