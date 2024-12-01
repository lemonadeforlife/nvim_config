local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local function toggle_formatoptions_cro()
	local current = vim.api.nvim_get_option_value("formatoptions", { scope = "local" })
	if string.find(current, "c") and string.find(current, "r") and string.find(current, "o") then
		vim.opt.formatoptions:remove("c")
		vim.opt.formatoptions:remove("r")
		vim.opt.formatoptions:remove("o")
		print("Disabled next line auto-comment")
	else
		vim.opt.formatoptions:append("c")
		vim.opt.formatoptions:append("r")
		vim.opt.formatoptions:append("o")
		print("Enabled next line auto-comment")
	end
end

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local keymaps = vim.keymap.set
local wk = require("which-key")
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

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
keymap("n", "<leader>T", ":ToggleTerm direction=vertical<CR>", opts) -- Toggle terminal
keymap("n", "<leader>t", ":ToggleTerm direction=horizontal<CR>", opts) -- Toggle terminal
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
wk.add({
	{ "<leader>h", "<cmd>noh<CR>", desc = "Remove highlight" },
})

-- Quit NeoVim
wk.add({
	{ "<leader>x", group = "Save/Quit" },
	{ "<leader>xa", "<cmd>qa<cr>", desc = "Quit all open files without saving" },
	{ "<leader>xs", "<cmd>w<cr>", desc = "Save" },
	{ "<leader>xx", "<cmd>x<cr>", desc = "Save & Exit" },
	{ "<leader>xb", "<cmd>bdelete!<cr>", desc = "Close Buffer Window" },
	{ "<leader>xq", "<cmd>q!<cr>", desc = "Force to quite without saving any changes" },
})

-- bufferline
wk.add({
	{ "<leader>b", group = "Buffers" },
	{ "<leader>bl", "<cmd>BufferLineCloseRight<cr>", desc = "Close Right Side Buffer" },
	{ "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left Side Buffer" },
	-- f = { "<cmd>on<cr>", "Make the current window the only one on the screen" },
	{
		"<leader>br",
		function()
			if vim.opt.relativenumber == false then
				vim.cmd([[set relativenumber]])
			else
				vim.cmd([[set relativenumber!]])
			end
		end,
		desc = "Toggle Hybrid Number",
	},
})
wk.add({
	{ "<C-p>", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin a Buffer" },
	-- Navigate buffers
	{ "<S-l>", "<cmd>bnext<cr>", desc = "Navigate buffer to left" },
	{ "<S-h>", "<cmd>bprevious<cr>", desc = "Navigate buffer to right" },
	-- LSP Related Shortcuts: Trouble, Mason etc
	{ "<leader>l", group = "LSP" },
	-- t = { "<cmd>Trouble diagnostics toggle<cr>", "List of troubles from LSP" },
	{ "<leader>lm", "<cmd>Mason<cr>", desc = "Mason Dashboard" },
	{ "<leader>ln", "<cmd>NullLsInfo<cr>", desc = "Null Info Dashboard" },
	{ "<leader>li", "<cmd>LspInfo<cr>", desc = "Lsp Info Dashboard" },
	{ "<leader>ll", "<cmd>LspLog<cr>", desc = "Lsp Log Dashboard" },
	{ "<leader>lc", "<cmd>CmpStatus<cr>", desc = "Completion Status" },
	{ "<leader>lp", "<cmd>Lazy<cr>", desc = "Opens up the plugin manager" },
	{ "<leader>ls", "<cmd>noa w<cr>", desc = "Save file without any formatting" },
	{ "<leader>lf", toggle_formatoptions_cro, desc = "Toggle next line auto comment" },
	{ "<leader>gd", desc = "LSP Definition" },
	{ "<leader>gi", desc = "LSP Implementations" },
	{ "<leader>gr", desc = "LSP Referrence" },
	-- related to searching, git, finding files, telescope etc
	{ "<leader>s", group = "Search" },
	{
		"<leader>sb",
		"<cmd> Telescope file_browser<cr>",
		desc = "creation, deletion, renaming, and moving of files and folders",
	},
	{ "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Search for File for current working workspace" },
	{
		"<leader>sl",
		"<cmd>Telescope live_grep<cr>",
		desc = "Search for a string in your current working directory",
	},
	{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Returns List of relevant help tags for your" },
	{ "<leader>sg", "<cmd>Telescope git_files<cr>", desc = "List Git files respecting .gitignore" },
	-- Git
	{ "<leader>g", group = "Git" },
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "List of Git commits" },
	{ "<leader>gp", ":Gitsigns preview_hunk<cr>", desc = "Previews Git blame on yellow bar" },
	{ "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Preview Git Diff" },
	{ "<leader>gl", "<cmd>GitSigns toggle_linehl<cr>", desc = "Highlight Line" },
	{
		"<C-l>",
		"<cmd>Gitsigns toggle_linehl<cr>",
		desc = "Highlight Line in Insert Mode",
		mode = "i",
	},
	-- Noice
	{ "<leader>n", group = "Noice" },
	{ "<leader>nh", "<cmd>Noice history<cr>", desc = "Shows the message history" },
	{ "<leader>nl", "<cmd>Noice last<cr>", desc = "shows the last message in a popup" },
	{ "<leader>nd", "<cmd>Noice dismiss<cr>", desc = "Dismiss all visible message" },
	{
		"<leader>ne",
		"<cmd>Noice errors<cr>",
		desc = "shows the error messages in a split. Last errors on top",
	},
	{ "<leader>nt", "<cmd>Noice telescope<cr>", desc = "opens message history in Telescope" },
	{ "<leader>ns", "<cmd>Noice stats<cr>", desc = "shows debugging stats" },
	-- Sessions / Suda
	{ "<leader>S", group = "Sessions & Suda" },
	{ "<leader>Sr", "<cmd>SessionRestore<cr>", desc = "Restore the current session for cwd" },
	{ "<leader>Ss", "<cmd>SessionSave<cr>", desc = "Save the current session for cwd" },
	{ "<leader>Sw", "<cmd>SudaWrite<cr>", desc = "Write the readonly file" },
	{ "<leader>SR", "<cmd>SudaRead<cr>", desc = "Open unreadable file" },
	-- Better Tmux Window & Buffer navigation
	{ "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
	{ "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
	{ "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
	{ "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
	{ "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
})
