local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
  -- debounce = 500,
  -- update_in_insert = true,
  sources = {
    -- python
    formatting.black,
    -- require("none-ls.diagnostics.flake8"),

    -- C/C++
    formatting.clang_format.with({
      filetypes = { "c", "cpp", "cs" },
    }), -- formatting

    -- Web Dev Formatting
    formatting.prettierd,

    -- javascript
    require("none-ls.diagnostics.eslint").with({
      config = {
        settings = {
          format = false,
        },
      },
      diagnostic_config = {
        update_in_insert = true,
      },
    }),
    require("none-ls.code_actions.eslint").with({
      config = {
        settings = {
          format = false,
        },
      },
    }),

    -- lua formatting
    formatting.stylua,

    -- bash/zsh
    require("none-ls-shellcheck.diagnostics"),
    require("none-ls-shellcheck.code_actions"),
    require("none-ls.formatting.beautysh"),
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
