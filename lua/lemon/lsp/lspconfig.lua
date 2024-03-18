require("neodev").setup({})
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local on_attach = function(_, _)
	local keymap = vim.keymap.set
	--local opts = { noremap = true, silent = true }
	keymap("n", "<leader>rn", vim.lsp.buf.rename, {})
	keymap("n", "<leader>ca", vim.lsp.buf.code_action, {})

	keymap("n", "gd", vim.lsp.buf.definition, {})
	keymap("n", "gi", vim.lsp.buf.implementation, {})
	keymap("n", "gr", require("telescope.builtin").lsp_references, {})
	keymap("n", "K", vim.lsp.buf.hover, {})
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
})
lspconfig["html"].setup({
	capabilities = capabilities,
})
lspconfig["cssls"].setup({
	capabilities = capabilities,
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
