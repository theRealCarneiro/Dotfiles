local M = {}
local highlights = require('colorfig.highlights')

function M.setup ()
	local colors = require('plugins.colors')
	vim.opt.termguicolors = true
	highlights.highlight_all(colors)
end

return M
