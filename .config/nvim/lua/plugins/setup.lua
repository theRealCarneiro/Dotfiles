vim.cmd [[packadd packer.nvim]]

local packer = require('packer').startup(function(use)
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

	use { 'theRealCarneiro/nvim-tabline' }
	use { 'nvim-lualine/lualine.nvim' }
	use { 'norcalli/nvim-colorizer.lua' }
	use { 'windwp/nvim-autopairs' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-vsnip' }
	use { 'hrsh7th/vim-vsnip' }
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

return packer
