set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'rking/ag.vim'

" languages
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'

" colorschemes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on
