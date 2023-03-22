-- Tabs
vim.keymap.set('n', '<S-j>', 'gT')
vim.keymap.set('n', '<S-k>', 'gt')

-- Splits
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Quit
vim.keymap.set({'n', 'i', 'v'}, '<C-q>', '<Cmd>q!<CR>')

-- Save
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<Cmd>w!<CR><Esc>')

-- Copy
vim.keymap.set('v', '<C-c>', '"*y')

-- Paste
vim.keymap.set({'n', 'v'}, '<C-p>', '"*p')
vim.keymap.set('i', '<C-v>', '<Esc>"*p')

-- Fern
vim.keymap.set('n','<C-f>', ':Fern %:h -drawer -toggle <CR>', {silent = true})
