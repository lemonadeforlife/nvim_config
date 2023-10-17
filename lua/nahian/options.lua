local option = vim.opt
option.clipboard:append { "unnamedplus" }  -- clipboard set+=
option.fileencoding = "utf-8"  -- setting file encoding utf-8
option.ignorecase = true
option.smartcase = true
option.smartindent = true
-- cofiguring tabs
option.expandtab = true -- convert tab to spaces
option.shiftwidth = 4
option.tabstop = 4
-- --o--
option.number = true
option.relativenumber = true
option.scrolloff = 8
option.sidescrolloff = 8
option.guifont = "DejaVuSansM Nerd Font Mono"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
