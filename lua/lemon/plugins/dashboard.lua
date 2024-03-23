return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			shortcut_type = "number",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Code",
						group = "DiagnosticHint",
						action = function()
							vim.cmd([[cd ~/Code/]])
							vim.cmd([[NvimTreeOpen ~/Code/]])
						end,
						key = "c",
					},
					{
						desc = " dotfiles",
						action = function()
							vim.cmd([[cd ~/.config/nvim/]])
							vim.cmd([[NvimTreeOpen ~/.config/nvim]])
							vim.cmd([[Telescope find_files cwd=~/.config/nvim]])
						end,
						key = "d",
					},
					{
						desc = "󰅜 Exit",
						group = "Number",
						action = ":q",
						key = "q",
					},
				},
			},
		})
	end,
}
