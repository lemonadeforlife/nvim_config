local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_auto = require("mason-tool-installer")
mason.setup()
mason_auto.setup({
  ensure_installed = {
    "lua_ls",
    "stylua",
    -- bash/zsh
    "bashls",
    "beautysh",
    "shellcheck",
    -- C/C++
    "clangd",
    "clang-format",
    -- python
    "pyright",
    "black",
    "flake8",
    -- web dev stuff
    "html",
    "cssls",
    "tsserver",
    "prettierd",
    -- json
    "jsonls",
  },
  auto_update = true,
})
mason_lspconfig.setup({
  automatic_installation = true,
})
