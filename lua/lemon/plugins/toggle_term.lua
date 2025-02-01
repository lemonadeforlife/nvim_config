return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		-- source: https://github.com/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks#using-toggleterm-with-powershell
		-- All of the following options have to be set before require("toggleterm").setup{} is called or they won't have any effect.
		if os_name == "Windows_NT" then
			local powershell_options = {
				shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
				shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
				shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
				shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
				shellquote = "",
				shellxquote = "",
			}
			for option, value in pairs(powershell_options) do
				vim.opt[option] = value
			end
		end
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
