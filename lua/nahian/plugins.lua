return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  'nvim-lualine/lualine.nvim',
  dependencies = {
      'nvim-tree/nvim-web-devicons',
      opts = true,
  },
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
}
