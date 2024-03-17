local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local keymaps = vim.keymap.set
local wk = require("which-key")
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

-- Window Split
keymap("n", "<leader>v", ":vsplit<cr>", opts)
keymap("n", "<leader>h", ":split<cr>", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

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
keymaps({ "n", "i", "v" }, "<C-p>", "<cmd>BufferLineTogglePin<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>t", ":ToggleTerm direction=float<CR>", opts)

-- ======================
-- ##### which-key ######
-- ======================

-- No highlight
wk.register({
    ["<leader>h"] = { "<cmd>noh<CR>", "Remove highlight" },
})

-- Quit NeoVim
wk.register({
    x = {
        name = "Neovim",
        a = { "<cmd>qa<cr>", "Quit all open files without saving" },
        s = { "<cmd>w<cr>", "Save" },
        x = { "<cmd>x<cr>", "Save & Exit" },
        b = { "<cmd>bdelete!<cr>", "Close Buffer Window" },
    },
}, { prefix = "<leader>" })

-- bufferline
wk.register({
    b = {
        name = "Buffers",
        l = { "<cmd>BufferLineCloseRight<cr>", "Close Right Side Buffer" },
        h = { "<cmd>BufferLineCloseLeft<cr>", "Close Left Side Buffer" },
        f = { "<cmd>on<cr>", "Make the current window the only one on the screen" },
    },
}, { prefix = "<leader>" })

-- bufferline
keymaps({ "n", "i", "v" }, "<C-p>", "<cmd>BufferLineTogglePin<CR>", opts)

-- NvimTreeToggle
wk.register({ ["<leader>e"] = "File Explorer" })

-- ToggleTerm
wk.register({ ["<leader>t"] = "Terminal" })

-- Fold
wk.register({
    f = {
        name = "fold",
        c = { "<cmd>foldclose<cr>", "Fold Code" },
        o = { "<cmd>foldopen<cr>", "Unfold Code" },
    },
}, { prefix = "<leader>" })

-- LSP Related Shortcuts: Trouble, Mason etc
wk.register({
    l = {
        name = "LSP",
        t = { "<cmd>TroubleToggle<cr>", "List of troubles from LSP" },
        m = { "<cmd>Mason<cr>", "Mason Dashboard" },
        n = { "<cmd>NullLsInfo<cr>", "Null Info Dashboard" },
        i = { "<cmd>LspInfo<cr>", "Lsp Info Dashboard" },
        l = { "<cmd>LspLog<cr>", "Lsp Log Dashboard" },
        c = { "<cmd>CmpStatus<cr>", "Completion Status" },
    },
}, { prefix = "<leader>" })

-- telescope
wk.register({
    s = {
        name = "Search",
        f = { "<cmd>Telescope find_files<cr>", "Search for File for current working workspace" },
        s = { "<cmd>Telescope live_grep<cr>", "Search for a string in your current working directory" },
        h = { "<cmd>Telescope help_tags<cr>", "Returns List of relevant help tags for your" },
        g = { "<cmd>Telescope git_files<cr>", "List Git files respecting .gitignore" },
    },
    g = {
        name = "Git",
        c = { "<cmd>Telescope git_commits<cr>", "List of Git commits" },
    },
}, { prefix = "<leader>", silent = false, noremap = false })
