lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "ruby",
    "elixir",
    "javascript",
    "html",
    "json",
    "yaml"
    },
  highlight = {
    enable = true,
  },
}
EOF

" nvim-tree
map <leader>n :NvimTreeToggle<cr>
map <leader>r :NvimTreeRefresh<cr>
map <leader>N :NvimTreeFindFile<cr>

" let g:nvim_tree_show_icons = {
"     \ 'git': 1,
"     \ 'folders': 1,
"     \ 'files': 1,
"     \ 'folder_arrows': 1,
"     \ }
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "▾",
    \   'arrow_closed': "▸",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
let g:nvim_tree_icon_padding = ''


lua <<EOF
require'nvim-tree'.setup {
  view = {
    width = 40
  },
  git = {
    enable = false
  }
}
EOF

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.colnr = ' '
let g:airline_symbols.branch = ''
let g:airline#extensions#branch#vcs_checks = []

let g:airline#extensions#tabline#enabled = 1    " show open buffers in tab line
let g:airline#extensions#ale#enabled = 1        " enable ALE


" Telescope
" map <leader>t :Telescope find_files<cr>
" map <leader>f :Telescope live_grep<cr>
" map <leader>b :Telescope buffers<cr>

" ack
let g:ackprg = 'rg --vimgrep --no-heading'
map <leader>f :Ack!<space>

" fzf
" map <leader>t :FZF<cr>
" let g:fzf_preview_command = 'bat --color=always --plain {-1}'

" fugitive
map <leader>gb :Git blame<cr>
map <leader>gg :GBrowse<cr>

" ALE
" let g:ale_linters = {
" \ 'elixir': ['elixir-ls']
" \}
" let g:ale_elixir_elixir_ls_release = expand('~/elixir-ls/release')
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'elixir': ['mix_format']
\}
let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 1

" map <leader>d :ALEGoToDefinition<cr>
" map <leader>r :ALEFindReferences<cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
