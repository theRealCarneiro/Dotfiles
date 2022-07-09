-- Tabs
vim.keymap.set('n', '<S-j>', 'gT')
vim.keymap.set('n', '<S-k>', 'gt')

-- Splits
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Quit
vim.keymap.set('n', '<C-q>', ':q!<CR>')
vim.keymap.set('i', '<C-q>', '<Esc>:q!<CR>')
vim.keymap.set('v', '<C-q>', '<Esc>:q!<CR>')

-- Save
vim.keymap.set('n', '<C-s>', '<Esc>:w<CR>')
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>')
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>')

-- Copy
vim.keymap.set('n', '<C-c>', '"*y')
vim.keymap.set('i', '<C-c>', '<Esc>"*y')
vim.keymap.set('v', '<C-c>', '"*y')

-- Paste
vim.keymap.set('n', '<C-p>', '"*p')
vim.keymap.set('i', '<C-p>', '<Esc>"*p')
vim.keymap.set('v', '<C-p>', '"*p')

-- Fern
vim.keymap.set('n','<C-f>', ':Fern %:h -drawer -toggle <CR>', {silent = true})
