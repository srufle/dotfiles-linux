" Set Line numbers on
set nu

" Manage plugins with vim-plug
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rust-lang/rust.vim'
call plug#end()

" Load all plugins
packloadall
silent! helptags ALL

" Show invisible characters
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.

" Enable syntax highlighting.
syntax on

colorscheme desert
" Enable indenting according to filetype
filetype plugin indent on

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
" https://shapeshed.com/vim-netrw/
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 10 

set backspace=2
"set undofile
" Enable enhanced tab completion
set wildmenu
" Complete till longest, then open wildmenu
set wildmode=list:longest,full
" Set a common undo directory
"if !isdirectory("$HOME/.vim/undodir")
"  call mkdir("$HOME/.vim/undodir","p")
"endif
"set undodir="$HOME/.vim/undodir"
