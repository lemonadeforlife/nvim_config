return {
	"rmagatti/auto-session",
	config = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
		require("auto-session").setup({
			auto_restore = false,
			suppressed_dirs = {
				"/",
				"~/app",
				"~/Music",
				"~/Public",
				"~/Videos",
				"~/Desktop",
				"~/Pictures",
				"~/Downloads/",
				"~/Templates",
			},
		})
	end,
}
