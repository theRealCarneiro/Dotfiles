require('telescope').setup()

vim.keymap.set('n', '<Leader>f', ':Telescope find_files<CR>')
vim.keymap.set('v', '<Leader>f', ':Telescope find_files<CR>')

vim.keymap.set('n', '<Leader>t', ':Telescope live_grep<CR>')
vim.keymap.set('v', '<Leader>t', ':Telescope live_grep<CR>')
