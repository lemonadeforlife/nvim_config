return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"folke/neodev.nvim",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
}
