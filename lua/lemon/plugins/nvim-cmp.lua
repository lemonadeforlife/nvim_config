return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- source for LSP in buffer
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for path in buffer
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
			dependencies = { "rafamadriz/friendly-snippets" }, -- source for snippets
		}, -- source snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocomplete
		"onsails/lspkind.nvim", -- vscode-like pictograms for neovim lsp completion items
	},
}
