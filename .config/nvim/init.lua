require ('settings')
require ('plugins.setup')
require ('keymaps')

vim.cmd('autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"')
