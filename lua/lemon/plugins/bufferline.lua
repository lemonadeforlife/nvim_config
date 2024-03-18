return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('bufferline').setup {
            options = {
                mode  = 'buffers',
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true,
                    }
                },
                separator_style = "slope",
                hover = {
                    enabled = true,
                },
                indicator = {
                    style = 'underline',
                },
            }
        }
	end,
}
