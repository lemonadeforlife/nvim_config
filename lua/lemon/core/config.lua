-- Theme
if os_name == "Linux" then
	vim.cmd([[colorscheme tokyonight-night]])
elseif os_name == "Windows_NT" then
	require("catppuccin").setup({
		flavour = "mocha",
		transparent_background = true,
	})
	vim.cmd.colorscheme("catppuccin")
else
	vim.cmd([[colorscheme catppuccin-mocha]])
end
