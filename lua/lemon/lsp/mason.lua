local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_auto = require("mason-tool-installer")
local package_list = {
	"lua_ls",
	"stylua",
	-- bash/zsh
	"bashls",
	"beautysh",
	"shellcheck",
	-- C/C++
	"clang-format",
	-- python
	"pyright",
	"black",
	"flake8",
	-- web dev stuff
	"html",
	"cssls",
	"emmet_language_server",
	"ts_ls",
	"prettierd",
	-- json
	"jsonls",
}
if os_name == "Windows_NT" then
	table.remove(package_list, 6)
end

mason.setup()
mason_auto.setup({
	ensure_installed = package_list,
	auto_update = true,
})
mason_lspconfig.setup({
	automatic_installation = false,
})
