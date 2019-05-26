"Vundle  plugin changes 
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" simply fold for code folding
Plugin 'tmhedberg/SimpylFold'

" autoindent python files
Plugin 'vim-scripts/indentpython.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Zenburn color scheme
Plugin 'jnurmine/Zenburn'

" ctrl+P fuzz search for files
Plugin 'kien/ctrlp.vim'

" git integration
Plugin 'tpope/vim-fugitive'

" powerline status line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" python virtual env
Plugin 'plytophogy/vim-virtualenv'

" tagbar
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" plugin options
let python_highlight_all=1
let g:ycm_autoclose_preview_window_after_completion=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:zenburn_old_Visual=1
colorscheme zenburn

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable folding with the spacebar
nnoremap <space> za
nnoremap <silent> <F6> :TagbarToggle<CR>
nnoremap <silent> <F5> :NERDTree<CR>

set nu

syntax enable
syntax on

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

