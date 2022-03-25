" Plug
call plug#begin()

"Plug 'jiangmiao/auto-pairs'

Plug 'windwp/nvim-autopairs'
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'itchyny/lightline.vim' " Status bar
Plug 'itchyny/vim-gitbranch' "Git branch
Plug 'vim-scripts/colorizer' " Show colors
Plug 'preservim/nerdcommenter' " Toggle comments
Plug 'lambdalisue/fern.vim' " File explorer
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " icones
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim' " icones
Plug 'antoinemadec/FixCursorHold.nvim' " nem sei
Plug 'lambdalisue/glyph-palette.vim' "cor dos icones
Plug 'kovetskiy/sxhkd-vim'
Plug 'kmonad/kmonad-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'williamboman/nvim-lsp-installer'

call plug#end()

colorscheme wal
set number
set encoding=utf-8
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
set mouse=a
set undodir=$XDG_CACHE_HOME/nvim/undodir
set undofile
filetype plugin indent on
syntax on
let mapleader = ";"
let g:AutoPairsShortcutToggle = '<leader>p'
let g:cursorhold_updatetime = 100

set completeopt=menu,menuone,noselect

"set viminfo+='1000,n$HOME/.config/nvim/viminfo
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" Modules
source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/plugconf/fern.vim
source $HOME/.config/nvim/plugconf/fern-git.vim
source $HOME/.config/nvim/plugconf/glyph-palette.vim
source $HOME/.config/nvim/plugconf/lightline.vim
source $HOME/.config/nvim/plugconf/netrw.vim 
source $HOME/.config/nvim/plugconf/vimwiki.vim

lua require 'plugconf.lspinstall'
lua require 'plugconf.cmp'
lua require 'plugconf.treesitter'
lua require 'plugconf.autopairs'
