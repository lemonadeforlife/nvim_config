if vim.g.vscode then
	require("lemon.core.vsoptions")
else
	require("lemon.core.options")
	require("lemon.store")
	require("lazy").setup({ import = "lemon.plugins" })
	require("lemon.lsp")
	require("lemon.core.keymaps")
end
