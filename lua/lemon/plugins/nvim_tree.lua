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
		})
		vim.cmd([[hi NvimTreeIndentMarker guifg=#73daca]])
	end,
}
