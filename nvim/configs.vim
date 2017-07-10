" NERD Tree
map <leader>n :NERDTreeToggle<cr>
map <leader>N :NERDTreeFind<cr>

" NERD Commenter
let NERDSpaceDelims=1               " number of spaces before comments

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''

let g:airline#extensions#tabline#enabled=1    " show open buffers in tab line
let g:airline#extensions#whitespace#enabled=0 " detect trailing whitespace

" ack
map <leader>f :Ack!<space>
let g:ackprg = 'rg --vimgrep --no-heading'

" fzf
map <leader>t :FZF<cr>

" fugitive
map <leader>b :Gblame<cr>

" neomake
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd BufWritePost,BufEnter *.rb,*.js,*.jsx Neomake

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
