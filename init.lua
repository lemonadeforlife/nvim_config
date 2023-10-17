-- All the folder implemented
require('nahian/keymaps')
require('nahian/options')
require('nahian/store')

-- plugins manager
require('lazy').setup('nahian/plugins')

-- theme
vim.cmd[[colorscheme tokyonight-night]]

--lualine
require('lualine').setup { options = { theme = 'tokyonight' } }

-- tree
require('nvim-tree').setup {}

-- toggleterm
require('toggleterm').setup {}
