" strip trailing whitespace on save
" function! <SID>StripTrailingWhitespaces()
"   " Preparation: save last search, and cursor position.
"   let _s=@/
"   let l = line(".")
"   let c = col(".")

"   " Do the business:
"   %s/\s\+$//e   " whitespace at end of a line
"   %s/\n\+\%$//e " newlines at end of the file

"   " Clean up: restore previous search history, and cursor position
"   let @/=_s
"   call cursor(l, c)
" endfunction
" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" upgrade and update plug
function PlugUp()
  :PlugUpgrade
  :PlugUpdate
endfunction
nmap :PU :call PlugUp()
