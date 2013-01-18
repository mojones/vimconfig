execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4

" display line numbers
set number 

" start up neocomplecache
let g:neocomplcache_enable_at_startup = 1

" allow autocompletion in python scripts
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" close preview windows automatically 
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" default folding is indent, which works fine for python
set foldmethod=indent
set foldlevelstart=20
