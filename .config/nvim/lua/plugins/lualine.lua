local status, colors = pcall(require, 'plugins.colors')
local theme

if (status) then

	-- colorfig theme
	theme = {
	  normal = {
		a = { bg = colors.color1, fg = colors.color0, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },

	  insert = {
		a = { bg = colors.color2, fg = colors.color0, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },

	  visual = {
		a = { bg = colors.color3, fg = colors.color0, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },

	  replace = {
		a = { bg = colors.color5, fg = colors.color0, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },

	  command = {
		a = { bg = colors.color6, fg = colors.color0, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },

	  inactive = {
		a = { bg = colors.color8, fg = colors.color7, gui = 'bold' },
		b = { bg = colors.color8, fg = colors.color7 },
		c = { bg = colors.color0, fg = colors.color7 },
	  },
	}
else
	theme = 'auto'
end

require('lualine').setup ({
	options = {
		theme = theme,
		disabled_filetypes = {},
		globalstatus = true
	},
})
