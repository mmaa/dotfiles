set shell=/bin/sh

source ~/.config/nvim/plugins.vim

set hidden

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

set number
set wrap
set nojoinspaces
set list
set list listchars=tab:▸\ ,trail:∙,nbsp:∴

set background=light
colorscheme solarized

set fileformats=unix
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab

set mouse=a

set scrolloff=1
set sidescrolloff=5

set ignorecase
set smartcase

set whichwrap+=<,>,h,l

" mark columns
" 81 (unix standard)
let &colorcolumn="81"

" map the arrow keys to be based on display lines,
" not physical lines
map <Down> gj
map <Up> gk
nnoremap j gj
nnoremap k gk

nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>
nmap <silent> <C-n> :cn<cr>
nmap <silent> <C-p> :cp<cr>

let mapleader = ','

" close current buffer and go to previous
nnoremap <leader>d :bprevious <bar> :bd#<cr>

" toggle search highlighting
noremap <leader><space> :set hlsearch! hlsearch?<cr>
nnoremap <esc> :noh<cr>

" yank to system clipboard
map <leader>y "*y

" toggle paste mode
map <leader>p :setlocal paste!<cr>

source ~/.config/nvim/configs.vim
source ~/.config/nvim/functions.vim
