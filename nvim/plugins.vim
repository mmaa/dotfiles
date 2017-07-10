call plug#begin('~/.config/nvim/plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'ElmCast/elm-vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kchmck/vim-coffee-script'
Plug 'altercation/vim-colors-solarized'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-endwise'
Plug 'dag/vim-fish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mxw/vim-jsx'
Plug 'groenewege/vim-less'
Plug 'vim-ruby/vim-ruby'
Plug 'junegunn/vim-easy-align'
Plug 'chrisbra/csv.vim'
Plug 'pangloss/vim-javascript'

call plug#end()
