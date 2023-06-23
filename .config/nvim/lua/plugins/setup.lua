vim.cmd [[packadd packer.nvim]]

local packer = require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'lambdalisue/fern.vim', branch = 'main'  }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'lambdalisue/fern-hijack.vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'ryanoasis/vim-devicons' }
	use { 'nvim-tree/nvim-web-devicons' }
	use { 'lambdalisue/glyph-palette.vim' }

	use { 'dstein64/vim-startuptime' }
	use { 'itchyny/vim-gitbranch'}
	use { 'preservim/nerdcommenter' }
	use { 'antoinemadec/FixCursorHold.nvim' }
	use { 'kovetskiy/sxhkd-vim' }
	use { 'kmonad/kmonad-vim' }
	use { 'elkowar/yuck.vim' }

	use { 'nvim-neotest/neotest', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-neotest/neotest-python' }
	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'lewis6991/gitsigns.nvim' }
	use { 'theRealCarneiro/nvim-tabline' }
	use { 'nvim-lualine/lualine.nvim' }
	use { 'norcalli/nvim-colorizer.lua' }
	use { 'windwp/nvim-autopairs' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'onsails/lspkind-nvim' }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'folke/neodev.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'williamboman/mason.nvim' }
	use { 'williamboman/mason-lspconfig.nvim' }
end)

require ('plugins.lspconfig')
require ('plugins.neotest')
require ('plugins.cmp')
require ('plugins.treesitter')
require ('plugins.autopairs')
require ('plugins.colorizer')
require ('plugins.tabline')
require ('plugins.lualine')
require ('plugins.fern')
require ('plugins.gitsigns')
require ('plugins.telescope')
--require ('plugins.colorfig')
require ('colorfig').setup()

return packer
