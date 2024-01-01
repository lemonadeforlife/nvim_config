local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local keymaps = vim.keymap.set
local wk  = require("which-key")
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

wk.register({
    ["<leader>h"] = { "<cmd>noh<CR>", "Remove highlight" }
})
-- keymap("n", "<leader>h", ":noh<CR>", opts) -- remove highlight
-- quit neovim
wk.register({
    x = {
        name = "Neovim",
        a = { "<cmd>qa<cr>", "Quit all open files without saving" },
        s = { "<cmd>w<cr>", "Save" },
        x = { "<cmd>x<cr>", "Save & Exit"},
        b = {"<cmd>bdelete!<cr>", "Close Buffer Window"},
   }
}, { prefix = "<leader>" })

-- bufferline
keymaps({"n", "i", "v"}, "<C-p>", "<ESC>:BufferLineTogglePin<CR>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
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

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- NvimTreeToggle
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
wk.register( { ["<leader>e"] = "File Explorer" } )

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm direction=float<CR>", opts)
wk.register( { ["<leader>t"] = "Terminal" } )

-- fold
keymap("n", "<leader>fc", ":foldclose<CR>", opts)
wk.register( { ["<leader>fc"] = "Fold" } )
keymap("n", "<leader>fo", ":foldopen<CR>", opts)
wk.register( { ["<leader>fo"] = "Unfold" } )

-- Trouble
keymap("n", "<leader>l", ":TroubleToggle<CR>", opts)
wk.register({
    ["<leader>l"] = "Issue List"
})

-- telescope
wk.register({
    f = {
        f = "Find File",
    }
})
