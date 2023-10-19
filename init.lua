-- All the folder implemented
require('nahian/keymaps')
require('nahian/options')
require('nahian/store')
-- plugins manager
require('lazy').setup('nahian/plugins')

-- theme
vim.cmd[[colorscheme tokyonight-night]]

--lualine
require('lualine').setup { options = { theme = 'tokyonight', globalstatus = false } }

-- tree
require('nvim-tree').setup {}

-- toggleterm
require('toggleterm').setup {}


-- autocomplete & Suggestion
require('nahian/completions')

-- null-ls
require('nahian/null_ls')

-- lsp
require('nahian/lsp_config')

-- syntax highlight
require('nahian/treesitter')

-- telescope
require('nahian/telescope')
