local opts = { noremap = true, silent = true }
local key = vim.api.nvim_set_keymap

--Remap space as leader key
key("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
key("n", "<C-h>", "<C-w>h", opts)
key("n", "<C-j>", "<C-w>j", opts)
key("n", "<C-k>", "<C-w>k", opts)
key("n", "<C-l>", "<C-w>l", opts)
key("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Resize with arrows
key("n", "<C-Up>", ":resize +2<CR>", opts)
key("n", "<C-Down>", ":resize -2<CR>", opts)
key("n", "<C-Left>", ":vertical resize -2<CR>", opts)
key("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Press jk fast to go back normal mode
key("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
key("v", "<", "<gv", opts)
key("v", ">", ">gv", opts)
-- Move text up and down
key("v", "<A-Up>", ":m .+1<CR>==", opts)
key("v", "<A-Down>", ":m .-2<CR>==", opts)
-- Better terminal navigation
term_opts = { silent = true }
key("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
key("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
key("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
key("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- toggletermn
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
