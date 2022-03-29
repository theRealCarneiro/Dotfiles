local set_keymap = require('common').set_keymap

-- Tabs
set_keymap('n', '<S-j>', 'gT')
set_keymap('n', '<S-k>', 'gt')

-- Splits
set_keymap('n', '<C-h>', '<C-w>h')
set_keymap('n', '<C-j>', '<C-w>j')
set_keymap('n', '<C-k>', '<C-w>k')
set_keymap('n', '<C-l>', '<C-w>l')
set_keymap('i', '<C-h>', '<Esc><C-w>h')
set_keymap('i', '<C-j>', '<Esc><C-w>j')
set_keymap('i', '<C-k>', '<Esc><C-w>k')
set_keymap('i', '<C-l>', '<Esc><C-w>l')

-- Quit
set_keymap('n', '<C-q>', ':q!<CR>')
set_keymap('i', '<C-q>', '<Esc>:q!<CR>')
set_keymap('v', '<C-q>', '<Esc>:q!<CR>')

-- Save
set_keymap('n', '<C-s>', '<Esc>:w<CR>')
set_keymap('i', '<C-s>', '<Esc>:w<CR>')
set_keymap('v', '<C-s>', '<Esc>:w<CR>')

-- Copy
set_keymap('n', '<C-c>', '"*y')
set_keymap('i', '<C-c>', '<Esc>"*y')
set_keymap('v', '<C-c>', '"*y')

-- Paste
set_keymap('n', '<C-p>', '"*p')
set_keymap('i', '<C-p>', '<Esc>"*p')
set_keymap('v', '<C-p>', '"*p')

-- Fern
set_keymap('n','<C-f>', ':Fern %:h -drawer -toggle <CR>', true)
