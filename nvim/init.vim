set shell=/bin/sh

source ~/.config/nvim/plugins.vim

set autoread " automatically reload when files change
set noshowmode

set backupdir=~/.local/share/nvim/backup
set backup
set writebackup
set updatetime=500

set undofile
set undolevels=9999 " maximum number of changes that can be undone
set undoreload=9999 " maximum number lines to save for undo on a buffer reload


set number
set wrap
set nojoinspaces
set list
set list listchars=tab:▸\ ,trail:∙,nbsp:∴

set background=light
colorscheme lucius
highlight Comment cterm = italic
" highlight Search ctermbg = NONE ctermfg = NONE cterm = underline

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

set inccommand=split

set whichwrap+=<,>,h,l

" mark columns
" 81 (unix standard)
let &colorcolumn = 121

" map the arrow keys to be based on display lines,
" not physical lines
map <Down> gj
map <Up> gk
nnoremap j gj
nnoremap k gk

" scroll one line at a time with the mouse
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>
nmap <silent> <C-n> :cn<cr>
nmap <silent> <C-p> :cp<cr>

let mapleader = ','

" search files by name
map <leader>t :Files<cr>

" close current buffer and go to previous
nnoremap <leader>c :bprevious <bar> :bd#<cr>

" toggle search highlighting
nnoremap <esc> :noh<cr>

" yank to system clipboard
map <leader>y "*y

" toggle paste mode
map <leader>p :setlocal paste!<cr>

source ~/.config/nvim/configs.vim
source ~/.config/nvim/functions.vim
