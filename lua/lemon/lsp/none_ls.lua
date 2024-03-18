local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnos = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    sources = {
        -- python
        formatting.black,
        require("none-ls.diagnostics.flake8"),
        -- javascript
        require("none-ls.diagnostics.eslint"),
        formatting.prettier,
        formatting.stylua,
    },
    -- format on save
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end
    end,
})
