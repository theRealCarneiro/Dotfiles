vim.cmd [[packadd packer.nvim]]

local packer = require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'lambdalisue/fern.vim' }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'lambdalisue/fern-hijack.vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'ryanoasis/vim-devicons' }
	use { 'lambdalisue/glyph-palette.vim' }

	use { 'dstein64/vim-startuptime' }
	use { 'itchyny/vim-gitbranch' }
	use { 'preservim/nerdcommenter' }
	use { 'antoinemadec/FixCursorHold.nvim' }
	use { 'kovetskiy/sxhkd-vim' }
	use { 'kmonad/kmonad-vim' }

	use { 'lewis6991/gitsigns.nvim' }
	use { 'theRealCarneiro/nvim-tabline' }
	use { 'nvim-lualine/lualine.nvim' }
	use { 'norcalli/nvim-colorizer.lua' }
	use { 'windwp/nvim-autopairs' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'onsails/lspkind-nvim' }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'folke/lua-dev.nvim' }
	use { 'williamboman/nvim-lsp-installer' }

end)

require ('plugins.lspinstall')
require ('plugins.cmp')
require ('plugins.treesitter')
require ('plugins.autopairs')
require ('plugins.colorizer')
require ('plugins.tabline')
require ('plugins.lualine')
require ('plugins.fern')
require ('plugins.gitsigns')
require ('plugins.colorfig')

return packer
