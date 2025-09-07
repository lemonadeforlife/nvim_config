-- #### My Core Neovim Config for other IDE's etc
-- ## Options
vim.opt.clipboard:append("unnamedplus")
vim.opt.conceallevel = 0 -- for `` visible in markdown
vim.opt.ignorecase = true
vim.opt.fileencoding = "utf-8"
vim.opt.showtabline = 2 -- always show tabline
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.expandtab = true -- convert tabs into spaces
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

-- ## Keymaps
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local keymaps = vim.keymap.set
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- ######## Normal ######
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Bufferline
keymaps({ "n", "i", "v" }, "<C-p>", "<cmd>BufferLineTogglePin<CR>", opts)
-- Terminal/ToggleTerm --
keymap("t", "jk", "<C-\\><C-N>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- ######## Insert ######
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
-- delete line without disrupting indent
keymap("i", "<C-u>", "<End><C-u>", opts)
-- ######## Visual ######
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
