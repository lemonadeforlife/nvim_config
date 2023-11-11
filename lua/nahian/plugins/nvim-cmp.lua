return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for path in buffer
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			dependencies = { "rafamadriz/friendly-snippets" }, -- source for snippets
		}, -- source snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocomplete
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		require("luasnip.loaders.from_vscode").lazy_load()
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-k>'] = cmp.mapping.select_prev_item(), -- previous suggestion
				['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-s>'] = cmp.mapping.complete(), -- show completion suggestion
				['<C-e>'] = cmp.mapping.abort(), -- close completion window
				['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
				{ name = 'path' },

			}),
		})
	end,
}
