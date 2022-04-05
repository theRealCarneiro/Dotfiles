local vim = vim
local set_options = require('common').set_options

vim.cmd('colorscheme wal')
vim.g.mapleader = ";"
vim.g.cursorhold_updatetime = 100

set_options({
	encoding = 'utf-8',
	scrolloff = 8,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	number = true,
	termguicolors = true,
	undofile = true,
	noshowmode = true,
	mouse = 'a',
	clipboard = 'unnamedplus',
	undodir = '~/.cache/nvim/undodir',
})
