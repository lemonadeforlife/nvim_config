return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local tree = require("nvim-treesitter.configs")
		tree.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"python",
				"html",
				"javascript",
				"css",
				"dockerfile",
				"cpp",
				"json",
				"json5",
				"markdown_inline",
				"bash",
				"typescript",
				"xml",
				"yaml",
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
