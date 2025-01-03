-- Useful Environment Variable
os_name = vim.loop.os_uname().sysname
if os_name == "Linux" then
	Home = os.getenv("HOME")
end

-- Useful Function
function Read_file(path)
	local open = io.open
	local file = open(path, "rb") -- r read mode and b binary mode
	if not file then
		return nil
	end
	local content = file:read("*a") -- *a or *all reads the whole file
	file:close()
	return content
end

-- settings for NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.api.nvim_create_autocmd("VimLeave", {
	pattern = "*",
	command = "set guicursor=a:ver25-blinkon1",
})

-- python provider
if os_name == "Linux" then
	vim.g.python3_host_prog = Home .. "/.pyenv/versions/.nvim-venv/bin/python"
end

vim.opt.clipboard:append("unnamedplus")
vim.opt.conceallevel = 0 -- for `` visible in markdown
vim.opt.ignorecase = true
vim.opt.fileencoding = "utf-8"
vim.opt.showtabline = 2 -- always show tabline
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.expandtab = true -- convert tabs into spaces
-- if vim.cmd([[echo &filetype]]) == "python" then
-- 	vim.opt.shiftwidth = 4
-- 	vim.opt.tabstop = 4
-- else
-- 	vim.opt.shiftwidth = 2
-- 	vim.opt.tabstop = 2
-- end
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.guifont = "DejaVuSansM Nerd Font"
-- Setting space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Smart Edit
vim.g.suda_smart_edit = 1
