return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnos = null_ls.builtins.diagnostics
		null_ls.setup({
			sources = {
				formatting.black,
				diagnos.flake8,
			},
		})
	end,
}
