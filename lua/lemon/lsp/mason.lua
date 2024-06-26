local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_auto = require("mason-tool-installer")
mason.setup()
mason_auto.setup({
	ensure_installed = {
		"lua_ls",
		-- bash/zsh
		"bashls",
		"beautysh",
		"shellcheck",
		-- python
		"pyright",
		"black",
		"flake8",
		-- web dev stuff
		"html",
		"cssls",
		"tsserver",
		"eslint",
		"prettier",
	},
	auto_update = true,
})
mason_lspconfig.setup({
	automatic_installation = true,
})
