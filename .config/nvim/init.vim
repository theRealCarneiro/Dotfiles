" Plug
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete
Plug 'dylanaraps/wal.vim' " Pywal
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'itchyny/lightline.vim' " Status bar
Plug 'pangloss/vim-javascript'
Plug 'itchyny/vim-gitbranch' "Git branch
"Plug 'ap/vim-css-color' " Show colors
Plug 'vim-scripts/colorizer' " Show colors
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'preservim/nerdcommenter' " Toggle comments
Plug 'lambdalisue/fern.vim' " File explorer
Plug 'lambdalisue/nerdfont.vim' " icones
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " icones
Plug 'antoinemadec/FixCursorHold.nvim' " nem sei
Plug 'lambdalisue/glyph-palette.vim' "cor dos icones
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'maxmellon/vim-jsx-pretty' " react syntax
Plug 'dense-analysis/ale'
call plug#end()

"map <leader>c :w! \| !compiler <c-r>%<CR>
let g:tex_flavor = 'latex'

autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

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
