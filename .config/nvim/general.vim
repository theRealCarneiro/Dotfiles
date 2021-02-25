colorscheme wal "  color scheme
au BufNewFile,BufRead /*.rasi setf css
"au BufNewFile,BufRead vifmrc set filetype=vim
highlight Normal ctermbg=none
"hi Normal ctermbg=NONE guibg=NONE
filetype plugin indent on
syntax on " Enable syntax highlight
set guifont=Hack\ Nerd\ Font\ 14
set number " Line number
set encoding=utf-8
set tabstop=5 " Tab size
set softtabstop=5 " Tab size
set shiftwidth=5 " Tab size   
set nocompatible " Disable vi compatibility
set clipboard+=unnamedplus " Use system clipboard
set mouse=a " Enable mouse suport 
set viminfo+='1000,n$HOME/.config/nvim/viminfo " Change viminfo location

" Leadder
let mapleader = ";"

" Toogle ale
nmap <leader>a <Esc>:ALEToggle<CR>

" Tabs
map <S-j> gT
map <S-k> gt

" Splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Save
nmap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc>:w<CR>
imap <C-s> <Esc>:w<CR>

" Quit
nmap <C-q> <Esc>:q!<CR>
vmap <C-q> <Esc>:q!<CR>
imap <C-q> <Esc>:q!<CR>

" Copy
vmap <C-c> "*y<CR>
imap <C-c> <Esc>"*y<CR>
nmap <C-c> "*y<CR>

vmap <C-p> "*p<CR>
imap <C-p> <Esc>"*p<CR>
nmap <C-p> "*p<CR>
