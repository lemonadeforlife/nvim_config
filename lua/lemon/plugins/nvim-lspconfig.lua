return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"folke/lazydev.nvim",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
}
