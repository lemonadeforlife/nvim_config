return {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        "folke/neodev.nvim",
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        require('neodev').setup {}
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')
        local opts = { noremap = true, silent = true }
        local keymap = vim.keymap
        keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
        keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap.set('n', 'gr', require("telescope.builtin").lsp_references, opts)
        keymap.set('n', 'K', vim.lsp.buf.hover, opts)

        -- used to enable autocompletion (assign to every lsp server config)
        local cap = cmp_nvim_lsp.default_capabilities()
        lspconfig["lua_ls"].setup {}
        lspconfig["pyright"].setup { capabilities = cap }
        --lspconfig["ruff_lsp"].setup {capabilities = cap }
        lspconfig["tsserver"].setup {
            capabilities = cap,
            init_options = {
                preferences = {
                    disableSuggestions = true,
                }
            }
        }
    end,
}
