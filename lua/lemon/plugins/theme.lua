return {
	-- "folke/tokyonight.nvim",
	-- config = function()
	-- 	require("tokyonight").setup({
	-- 		style = "moon",
	-- 		transparent = false,
	-- 		dim_inactive = true,
	-- 		lualine_bold = true,
	-- 	})
	-- end,
	"dracula/vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme dracula]])
	end,
}
