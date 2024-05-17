return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "󰳟",
							arrow_open = "󰁆",
						},
					},
				},
			},
			update_focused_file = {
				enable = true,
				update_root = {
					enable = true,
				},
			},
		})
		vim.cmd([[hi NvimTreeIndentMarker guifg=#73daca]])
	end,
}
