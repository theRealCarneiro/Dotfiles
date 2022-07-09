vim.g['fern#drawer_width'] = 30
vim.g['fern#default_hidden'] = 1
vim.g['fern#hide_cursor'] = 1
vim.g['fern#disable_default_mappings'] = 1
vim.g['fern#disable_drawer_smart_quit'] = 0
vim.g['fern#renderer'] = "nerdfont"
vim.g['fern_git_status#disable_ignored'] = 1
vim.g['fern_git_status#disable_untracked'] = 0
vim.g['fern_git_status#disable_submodules'] = 0
vim.g['fern_git_status#disable_directories'] = 0

local function fern_init()
	vim.keymap.set('n', 'h', '<Plug>(fern-action-collapse)', { buffer = true, nowait = true })
	vim.keymap.set('n', 'l', '<Plug>(fern-action-open-or-expand)', { buffer = true, nowait = true })
	vim.keymap.set('n', 'i', '<Plug>(fern-action-reveal)', { buffer = true, nowait = true })
	vim.keymap.set('n', 't', '<Plug>(fern-action-open:tabedit)', { buffer = true })
	vim.keymap.set('n', 'H', '<Plug>(fern-action-open:split)', { buffer = true })
	vim.keymap.set('n', 'V', '<Plug>(fern-action-open:vsplit)', { buffer = true })
	vim.keymap.set('n', 'R', '<Plug>(fern-action-rename)', { buffer = true })
	vim.keymap.set('n', 'M', '<Plug>(fern-action-move)', { buffer = true })
	vim.keymap.set('n', 'C', '<Plug>(fern-action-copy)', { buffer = true })
	vim.keymap.set('n', 'N', '<Plug>(fern-action-new-path)', { buffer = true })
	vim.keymap.set('n', 'T', '<Plug>(fern-action-new-file)', { buffer = true })
	vim.keymap.set('n', 'D', '<Plug>(fern-action-new-dir)', { buffer = true })
	vim.keymap.set('n', 'S', '<Plug>(fern-action-hidden-toggle)', { buffer = true })
	vim.keymap.set('n', 'dd', '<Plug>(fern-action-trash)', { buffer = true })
	vim.keymap.set('n', '<BS>', '<Plug>(fern-action-leave)', { buffer = true })
	vim.keymap.set('n', '<CR>', '<Plug>(fern-action-enter)', { buffer = true })
	vim.keymap.set('n', '<leader>', '<Plug>(fern-action-mark)', { buffer = true })
end

local fern_custom = vim.api.nvim_create_augroup("fern-custom", { clear = true })
local glyph_palette = vim.api.nvim_create_augroup("glyph-palette", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	callback = fern_init,
	pattern = 'fern',
	group = fern_custom,
})

vim.api.nvim_create_autocmd("FileType", {
	callback = "glyph_palette#apply",
	pattern = 'fern',
	group = glyph_palette,
})
