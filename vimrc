execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
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

" dont try to open java class files as text
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

" ignore groovy Test files
set wildignore+=*Tests.groovy

" move up and down by screen line, not file line
:nmap j gj
:nmap k gk

" highlight search as you type
:set incsearch

" ignore case unless the search string includes mixed case
:set ignorecase
:set smartcase

" highlight current search, use \q to remove highlight
:set hlsearch
:nmap \q :nohlsearch<CR>

" dont highlight spaces
:set hls!
