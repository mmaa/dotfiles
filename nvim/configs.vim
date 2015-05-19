" NERD Tree
map <leader>n :NERDTreeToggle<cr>

" NERD Commenter
let NERDSpaceDelims=1               " number of spaces before comments

" airline
let g:airline_left_sep=''           " remove special characters from left side
let g:airline_right_sep=''          " remove special characters from right side
let g:airline#extensions#tabline#enabled=1    " show open buffers in tab line

" ag
map <leader>f :Ag<space>

" fugitive
map <leader>b :Gblame<cr>

" ctrlp
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
