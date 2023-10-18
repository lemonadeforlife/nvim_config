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

-- null-ls
require('nahian/null_ls')

-- autocomplete & Suggestion
require('nahian/completions')

-- lsp
require('nahian/lsp_config')

-- syntax highlight
require('nahian/treesitter')
