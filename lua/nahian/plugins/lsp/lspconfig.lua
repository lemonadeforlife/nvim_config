return {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        local keymap = vim.keymap

        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            -- set keybinds
            opts.desc = "Show Lsp referrence"
            keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, reference

            opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

            opts.desc = "Show LSP implementation"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

            opts.desc = "Show LSP definition"
            keymap.set("n", "gd", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp definition

            opts.desc = "Show LSP type definition"
            keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definition

            opts.desc = "Show available code actions"
            keymap.set({"n","v"}, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions both normal & visual mode
            opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

            opts.desc = "Show buffer diagnostics"
            keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show diagnostics for file

            opts.desc = "Show line diagnostics"
            keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

            opts.desc = "Go to previous diagnostics"
            keymap.set("n", "[d", vim.diagnostics.goto_prev, opts) -- jump to prev diagnostics in buffer

            opts.desc = "Go to next diagnostics"
            keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostics in buffer

            opts.desc = "Show Docs for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show docs for what is under cursor

            opts.desc = "Restart LSP"
            keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping for restart lsp if necessary
        end

        -- used to enable autocompletion (assign to every lsp server config)
        local cap = cmp_nvim_lsp.default_capabilities()
        lspconfig["lua_ls"].setup {
            capabilities = cap,
            settings = {
                Lua = {
                  runtime = {
                    -- Tell the language server which version of Lua you're using
                    -- (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                  },
                  diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {
                      'vim',
                      'require'
                    },
                  },
                  workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                  },
                  -- Do not send telemetry data containing a randomized but unique identifier
                  telemetry = {
                    enable = false,
                  },
                },
            },
        }
        lspconfig["pyright"].setup {
            on_attach = on_attach,
            capabilities = cap
        }
        lspconfig["tsserver"].setup {
            on_attach = on_attach,
            capabilities = cap,
            init_options = {
                preferences = {
                    disableSuggestions = true,
                }
            }
        }
    end,
}
