return {
	"IogaMaster/neocord",
	event = "VeryLazy",
	config = function()
		if OS_NAME == "Linux" then
			require("neocord").setup({
				client_id = Read_file(Home .. "/.config/nvim/.env"),
			})
		end
	end,
}
