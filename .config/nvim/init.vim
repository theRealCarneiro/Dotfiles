" Plug
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete
Plug 'dylanaraps/wal.vim' " Pywal
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'itchyny/lightline.vim' " Status bar
Plug 'itchyny/vim-gitbranch' "Git branch
"Plug 'norcalli/nvim-colorizer.lua'
Plug 'ap/vim-css-color' " Show colors
"Plug 'chrisbra/Colorizer' " Show colors
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'preservim/nerdcommenter' " Toggle comments
Plug 'vimwiki/vimwiki' " Personal wiki
Plug 'lambdalisue/fern.vim' " File explorer
Plug 'lambdalisue/nerdfont.vim' " icones
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " icones
Plug 'antoinemadec/FixCursorHold.nvim' " nem sei
Plug 'lambdalisue/glyph-palette.vim' "cor dos icones
Plug 'tomasiser/vim-code-dark' " colors
Plug 'chriskempson/base16-vim'
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'maxmellon/vim-jsx-pretty' " react syntax
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
"Plug 'preservim/nerdtree' " File explorer
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree syntax 
call plug#end()

" Pathogen
"execute pathogen#infect()
"map <leader>c :w! \| !compiler <c-r>%<CR>
let g:tex_flavor = 'latex'
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
"let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
"set t_Co=256
"set termguicolors
"lua require'colorizer'.setup()

" Modules
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugconf/lightline.vim
source $HOME/.config/nvim/plugconf/fern.vim
source $HOME/.config/nvim/plugconf/cursorhold.vim
source $HOME/.config/nvim/plugconf/glyph-palette.vim
source $HOME/.config/nvim/plugconf/vimwiki.vim
source $HOME/.config/nvim/plugconf/netrw.vim 
source $HOME/.config/nvim/plugconf/vim-live-latex-preview.vim 
"source $HOME/.config/nvim/plugconf/nerdtree.vim

