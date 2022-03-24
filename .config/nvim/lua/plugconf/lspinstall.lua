local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	if server.name == 'pylsp' then
		pylsp = {
			cmd = {"pylsp"},
			root_dir = function(fname)
			local root_files = {
				'pyproject.toml',
				'setup.py',
				'setup.cfg',
				'requirements.txt',
				'Pipfile',
			}
			return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
			end,
			settings = {
				pylsp = {
					configurationSources = { "pycodestyle" },
					plugins = {
						pycodestyle = { enabled = false, maxLineLength = 100 },
						pylint = { enabled = false },
						flake8 = { enabled = false },
						pyflakes = { enabled = false },
					}
				}
			}
		}
	end

	local opts = {}
	server:setup(opts)
end)
