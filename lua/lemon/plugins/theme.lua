return {
	-- enter your theme repo

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = false,
				dim_inactive = true,
				lualine_bold = true,
			})
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	{
		"dracula/vim",
		lazy = false,
		priority = 1000,
		-- config = function()
		--   vim.cmd([[colorscheme dracula]])
		-- end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		-- config = function()
		--   vim.cmd([[colorscheme catppuccin-mocha]])
		-- end,
	},
}
