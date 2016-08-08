" NERD Tree
map <leader>n :NERDTreeToggle<cr>
map <leader>N :NERDTreeFind<cr>

" NERD Commenter
let NERDSpaceDelims=1               " number of spaces before comments

" airline
let g:airline_left_sep=''           " remove special characters from left side
let g:airline_right_sep=''          " remove special characters from right side
let g:airline#extensions#tabline#enabled=1    " show open buffers in tab line
let g:airline#extensions#whitespace#enabled=0 " detect trailing whitespace

" ag
map <leader>f :Ag<space>

" fugitive
map <leader>b :Gblame<cr>

" neomake
let g:neomake_ruby_enabled_makers = ['mri']
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd BufWritePost,BufEnter *.rb,*.js,*.jsx Neomake
