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
	for _ = 1, 4 do
		table.remove(package_list, 3) -- removing bashls, beautysh, shellcheck & clang-format
	end
	table.insert(package_list, "powershell_es")
	for i, v in ipairs(package_list) do
		print(i .. " " .. v)
	end
end

mason.setup()
mason_auto.setup({
	ensure_installed = package_list,
	auto_update = true,
})
mason_lspconfig.setup({
	automatic_installation = false,
})
