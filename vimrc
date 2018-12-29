" Set Line numbers on
set nu

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

set backspace=2
set undofile
" Set a common undo directory
if !isdirectory("$HOME/.vim/undodir")
  call mkdir("$HOME/.vim/undodir","p")
endif
set undodir="$HOME/.vim/undodir"
