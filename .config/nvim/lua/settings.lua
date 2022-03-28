local vim = vim
local set_options = require('common').set_options

vim.cmd('colorscheme wal')
vim.g.mapleader = ";"
vim.g.cursorhold_updatetime = 100

set_options({
	encoding = 'utf-8',
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	scrolloff = 4,
	clipboard = 'unnamedplus',
	mouse = 'a',
	number = true,
	termguicolors = true,
	undodir = '$XDG_CACHE_HOME/nvim/undodir',
	undofile = true,
	noshowmode = true,
})
