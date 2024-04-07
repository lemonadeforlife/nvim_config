return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.4",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-p>"] = require("telescope.actions.layout").toggle_preview,
					},
					n = {
						["q"] = actions.close,
						["<C-p>"] = require("telescope.actions.layout").toggle_preview,
					},
				},
			},
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
