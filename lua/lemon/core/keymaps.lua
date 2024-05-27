local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local keymaps = vim.keymap.set
local wk = require("which-key")
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
-- ######################
-- ###### Modes ########
-- ####################
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- #######################
-- ######## Normal ######
-- #####################

-- Window Split
keymap("n", "<leader>v", ":vsplit<cr>", opts)
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
keymap("n", "<leader>t", ":ToggleTerm direction=float<CR>", opts) -- Toggle terminal in float window

-- NvimTreeToggle
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- #######################
-- ######## Insert ######
-- #####################

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- #######################
-- ######## Visual ######
-- #####################

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
		name = "Save / Quite",
		a = { "<cmd>qa<cr>", "Quit all open files without saving" },
		s = { "<cmd>w<cr>", "Save" },
		x = { "<cmd>x<cr>", "Save & Exit" },
		b = { "<cmd>bdelete!<cr>", "Close Buffer Window" },
		q = { "<cmd>q!<cr>", "Force to quite without saving any changes" },
	},
}, { prefix = "<leader>" })

-- bufferline
wk.register({
	b = {
		name = "Buffers",
		l = { "<cmd>BufferLineCloseRight<cr>", "Close Right Side Buffer" },
		h = { "<cmd>BufferLineCloseLeft<cr>", "Close Left Side Buffer" },
		-- f = { "<cmd>on<cr>", "Make the current window the only one on the screen" },
	},
	["br"] = {
		function()
			if vim.opt.relativenumber == false then
				vim.cmd([[set relativenumber]])
			else
				vim.cmd([[set relativenumber!]])
			end
		end,
		"Toggle Hybrid Number",
	},
}, { prefix = "<leader>", noremap = true, silent = true })

wk.register({
	["<C-p>"] = { "<cmd>BufferLineTogglePin<CR>", "Toggle Pin a Buffer" },
})
-- Navigate buffers
wk.register({
	["<S-l>"] = { "<cmd>bnext<cr>", "Navigate buffer to left" },
	["<S-h>"] = { "<cmd>bprevious<cr>", "Navigate buffer to right" },
})

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
		p = { "<cmd>Lazy<cr>", "Opens up the plugin manager" },
	},
}, { prefix = "<leader>" })

-- related to searching, git, finding files, telescope etc
wk.register({
	s = {
		name = "Search",
		f = { "<cmd>Telescope find_files<cr>", "Search for File for current working workspace" },
		l = { "<cmd>Telescope live_grep<cr>", "Search for a string in your current working directory" },
		h = { "<cmd>Telescope help_tags<cr>", "Returns List of relevant help tags for your" },
		g = { "<cmd>Telescope git_files<cr>", "List Git files respecting .gitignore" },
	},
	g = {
		name = "Git",
		c = { "<cmd>Telescope git_commits<cr>", "List of Git commits" },
		p = { ":Gitsigns preview_hunk<cr>", "Previews Git blame on yellow bar" },
		d = { "<cmd>Gvdiffsplit<cr>", "Preview Git Diff" },
	},
}, { prefix = "<leader>" })

-- Noice
wk.register({
	n = {
		name = "Noice",
		h = { "<cmd>Noice history<cr>", "Shows the message history" },
		l = { "<cmd>Noice last<cr>", "shows the last message in a popup" },
		d = { "<cmd>Noice dismiss<cr>", "Dismiss all visible message" },
		e = { "<cmd>Noice errors<cr>", "shows the error messages in a split. Last errors on top" },
		t = { "<cmd>Noice telescope<cr>", "opens message history in Telescope" },
		s = { "<cmd>Noice stats<cr>", "shows debugging stats" },
	},
}, { prefix = "<leader>" })

-- Sessions / Writing & Reading files
wk.register({
	S = {
		name = "Sessions & Write readonly file",
		r = { "<cmd>SessionRestore<cr>", "Restore the current session for cwd" },
		s = { "<cmd>SessionSave<cr>", "Save the current session for cwd" },
		w = { "<cmd>SudaWrite<cr>", "Write the readonly file" },
		R = { "<cmd>SudaRead<cr>", "Open unreadable file" },
	},
}, { prefix = "<leader>" })
-- Better Tmux Window & Buffer navigation
wk.register({
	["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>" },
	["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>" },
	["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>" },
	["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>" },
	["<C-\\>"] = { "<cmd>TmuxNavigatePrevious<cr>" },
})
