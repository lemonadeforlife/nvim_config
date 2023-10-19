return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
        "nvim-tree/nvim-web-devicons",
        },
        config = function()
        require("nvim-tree").setup {}
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        'nvim-lualine/lualine.nvim',
        dependencies = {
          'nvim-tree/nvim-web-devicons',
          opts = true,
        },
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = {"python"},
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    {
        'L3MON4D3/LuaSnip',
        dependencies = { "rafamadriz/friendly-snippets" },
    },
}
