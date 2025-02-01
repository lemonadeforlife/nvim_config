if vim.g.vscode then
	require("lemon.core.vsoptions")
	require("lemon.core.vskeymaps")
else
	require("lemon.core.options")
	require("lemon.store")
	require("lazy").setup({ import = "lemon.plugins" })
	require("lemon.lsp")
	require("lemon.core.keymaps")
	require("lemon.core.config")
end
