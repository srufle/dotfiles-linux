" Set Line numbers on
set nu

" Install vim-plug if missing
" https://www.rosipov.com/blog/cross-platform-vim-plug-setup/
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PluginInstall --sync | source $MYVIMRC
endif  

" Manage plugins with vim-plug
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
" Rust plugins
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()
" Rust rls command
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

" Tab completion for auto complete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

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
