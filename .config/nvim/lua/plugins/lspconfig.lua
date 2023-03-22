require('neodev').setup()

require('mason').setup()
require('mason-lspconfig').setup()
local lspconfig = require('lspconfig')
vim.lsp.set_log_level("debug")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pylsp.setup {
	capabilities = capabilities,
	settings = {
		pylsp = {
			configurationSources = { 'flake8' },
			plugins = {
				pycodestyle = { enabled = false },
				pyflakes = { enabled = false },
				mccabe = { enabled = false },
				flake8 = {
					enabled = true,
				},
				pylint = {
					enabled = true,
				},
				jedi_completion = {
					include_params = true,
					include_function_objects = true,
				},
			},
		}
	},
}

lspconfig.sumneko_lua.setup {
	capabilities = capabilities
}

lspconfig.clangd.setup {
	capabilities = capabilities
}
