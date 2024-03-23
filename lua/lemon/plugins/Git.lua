return {
	"tpope/vim-fugitive", -- for git wrapper for using git commands
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
