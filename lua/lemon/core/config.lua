-- Theme
if os_name == "Linux" then
	vim.cmd([[colorscheme tokyonight-night]])
elseif os_name == "Windows_NT" then
	vim.cmd([[colorscheme dracula]])
else
	vim.cmd([[colorscheme catppuccin-mocha]])
end
