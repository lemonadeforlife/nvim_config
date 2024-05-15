local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	sources = {
		-- python
		formatting.black,
		require("none-ls.diagnostics.flake8"),

		-- Web Dev Formatting
		formatting.prettier,

		-- javascript
		require("none-ls.diagnostics.eslint_d"),
		-- lua formatting
		formatting.stylua,

		-- bash
		require("none-ls-shellcheck.diagnostics"),
		require("none-ls-shellcheck.code_actions"),
		null_ls.builtins.formatting.shfmt.with({
			filetypes = { "sh", "zsh" },
		}),
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
