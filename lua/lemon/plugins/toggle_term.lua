return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "vertical" then
					return vim.o.columns * 0.4142
				else
					if term.direction == "horizontal" then
						return vim.o.lines * 0.35
					end
				end
			end,
			start_in_insert = true,
		})
	end,
}
