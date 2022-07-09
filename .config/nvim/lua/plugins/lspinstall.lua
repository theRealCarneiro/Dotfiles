local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	local opts = {}

	if server.name == 'sumneko_lua' then
		opts.settings = {
			Lua = {
				diagnostics = { globals = { 'vim' } }
			}
		}

		local dev_opts = {
			library = {
				vimruntime = true,
				types = true,
			},
			lspconfig = opts,
		}

		opts = require('lua-dev').setup(dev_opts)

	end

	server:setup(opts)
end)
