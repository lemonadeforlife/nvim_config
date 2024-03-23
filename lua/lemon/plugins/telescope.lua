return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.4",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("noice")
	end,
}
