return {
    "williamboman/mason.nvim",
    dependencies = {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
    },
    config = function()
	    local mason = require('mason')
	    local mason_lspconfig = require('mason-lspconfig')
        local mason_auto = require('mason-tool-installer')
	    mason.setup()
        mason_auto.setup {
		    ensure_installed = {
			    "lua_ls",
			    "pyright",
                "black",
                "flake8",
                "html",
                "cssls",
                "tsserver",
                "eslint_d",
                "prettier",
		    },
        }
	    mason_lspconfig.setup({
		    automatic_installation = true,
	    })
    end,
}
