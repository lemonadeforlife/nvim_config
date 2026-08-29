-- Theme
if OS_NAME == "Linux" then
	vim.cmd([[colorscheme tokyonight-night]])
elseif OS_NAME == "Windows_NT" then
	require("catppuccin").setup({
		flavour = "mocha",
		transparent_background = true,
	})
	vim.cmd.colorscheme("catppuccin")
else
	vim.cmd([[colorscheme catppuccin-mocha]])
end
