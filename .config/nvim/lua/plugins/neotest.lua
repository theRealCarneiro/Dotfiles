require("neotest").setup({
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
    }),
    --require("neotest-plenary"),
    --require("neotest-vim-test")({
      --ignore_file_types = { "python", "vim", "lua" },
    --}),
  },
})


vim.keymap.set("n", "<leader>ns", "<cmd>lua require('neotest').summary.toggle()<cr>", {})
vim.keymap.set("n", "<leader>nr", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", {})
vim.keymap.set("n", "<leader>no", "<cmd>lua require('neotest').output.open()<cr>", {})

