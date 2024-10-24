local function buildCmd(cmd)
	local os_name = vim.loop.os_uname().sysname
	local compiler
	local install
	if os_name == "Linux" then
		compiler = "make"
		install = "./install --all"
	else
		compiler = "gcc"
		install = ".\\install.ps1 --all"
	end
	if cmd == "compiler" then
		return compiler
	elseif cmd == "install" then
		return install
	end
end
return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.4",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "junegunn/fzf", build = buildCmd("install") },
		"junegunn/fzf.vim",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-p>"] = require("telescope.actions.layout").toggle_preview,
					},
					n = {
						["q"] = actions.close,
						["<C-p>"] = require("telescope.actions.layout").toggle_preview,
					},
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("noice")
		telescope.load_extension("file_browser")
	end,
}
