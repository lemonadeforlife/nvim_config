return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd[[colorscheme tokyonight-night]]
	end,
}
