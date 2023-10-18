require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { 'lua_ls' }
}


local key = vim.keymap.set
local buff = vim.lsp.buff
local on_attach = function(_, buffr)
   key('n', '<leader>lrn', buff.rename, {})
   key('n', '<leader>lc', buff.code_action, {})
   key('n', '<leader>ld', buff.definition, {})
   key('n', '<leader>le', buff.implementation, {})
   key('n', 'K', buff.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "lua" }
}
require('lspconfig').pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" },
}
