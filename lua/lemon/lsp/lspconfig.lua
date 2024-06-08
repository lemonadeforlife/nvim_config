require("neodev").setup()
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- attaching keymaps for lsp's
local on_attach = function(_, _)
	local telescope = require("telescope.builtin")
	local keymap = vim.keymap.set
	--local opts = { noremap = true, silent = true }
	keymap("n", "<leader>rn", vim.lsp.buf.rename, {})
	keymap("n", "<leader>ca", vim.lsp.buf.code_action, {})

	keymap("n", "gd", telescope.lsp_definitions, {})
	keymap("n", "gi", telescope.lsp_implementations, {})
	keymap("n", "gr", telescope.lsp_references, {})
	keymap("n", "K", vim.lsp.buf.hover, {})
end

-- declare client to show diagnostics in insert mode as well
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	-- delay update diagnostics
-- 	update_in_insert = true,
-- })
-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- lsp configs
lspconfig["lua_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig["bashls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "sh", "zsh" },
})
lspconfig["html"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = {
			css = true,
			javascript = true,
		},
		provideFormatter = true,
	},
})
lspconfig["cssls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		provideFormatter = true,
	},
})
lspconfig["pyright"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig["tsserver"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
})
lspconfig["clangd"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
