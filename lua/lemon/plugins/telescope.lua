return {
	'nvim-telescope/telescope.nvim', version = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup {}
	end,
}
