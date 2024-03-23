-- settings for NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- python provider
vim.g.python3_host_prog = "/home/nahian/.config/nvim/.nvim-venv/bin/python3"

vim.opt.clipboard:append("unnamedplus")
vim.opt.conceallevel = 0 -- for `` visible in markdown
vim.opt.ignorecase = true
vim.opt.fileencoding = "utf-8"
vim.opt.showtabline = 2 -- always show tabline
vim.opt.smartcase = true
vim.opt.smartindent = false
vim.opt.expandtab = true -- convert tabs into spaces
if vim.cmd([[echo &filetype]]) == "python" then
	vim.opt.shiftwidth = 4
	vim.opt.tabstop = 4
else
	vim.opt.shiftwidth = 2
	vim.opt.tabstop = 2
end
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.guifont = "DejaVuSansM Nerd Font"
-- Setting space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
