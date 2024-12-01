return {
	"IogaMaster/neocord",
	event = "VeryLazy",
	config = function()
		require("neocord").setup({
			client_id = Read_file(Home .. "/.config/nvim/.env"),
		})
	end,
}
