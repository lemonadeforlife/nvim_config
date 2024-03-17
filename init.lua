if vim.g.vscode then
    -- VSCode extension
else
    -- Ordinary Extension
    require("nahian.core.options")
    require("nahian.store")
    require("lazy").setup({
        { import = "nahian.plugins" },
        { import = "nahian.plugins.lsp" },
    })
    require("nahian.core.keymaps")
end
