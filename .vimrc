let Tlist_Inc_Winwidth = 100
nnoremap <silent> <F6> :TlistToggle<cr>
nnoremap <silent> <F5> :TlistOpen<CR>
set nu
syntax enable

" most editing lines
set showmatch autoindent expandtab tabstop=4 shiftwidth=4
set tags=tags;

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()
