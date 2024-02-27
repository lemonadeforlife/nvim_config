return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function ()
        require("which-key").setup {}
        local wk  = require("which-key")
        wk.register({
            ["<leader>nh"] = { "<cmd>noh<CR>", "Remove highlight" }
        })
        -- keymap("n", "<leader>h", ":noh<CR>", opts) -- remove highlight
        -- quit neovim
        wk.register({
            x = {
                name = "Neovim",
                a = { "<cmd>qa<cr>", "Quit all open files without saving" },
                s = { "<cmd>w<cr>", "Save" },
                x = { "<cmd>x<cr>", "Save & Exit"},
                b = {"<cmd>bd<cr>", "Close Buffer Window"},
           }
        }, { prefix = "<leader>" })

        -- bufferline
        wk.register({
            b = {
                name = "Buffers",
                l = {"<cmd>BufferLineCloseRight<cr>", "Close Right Side Buffer"},
                h = {"<cmd>BufferLineCloseLeft<cr>", "Close Left Side Buffer"},
            }
        }, {prefix="<leader>"})
        -- NvimTreeToggle
        wk.register( { ["<leader>e"] = "File Explorer" } )
        --ToogleTerm
        wk.register( { ["<leader>t"] = "Terminal" } )
        -- fold
        wk.register( { ["<leader>fc"] = "Fold" } )
        wk.register( { ["<leader>fo"] = "Unfold" } )
        -- LSP Related Shortcuts: Trouble, Mason
        wk.register({
            l = {
                name = "LSP",
                t = {"<cmd>TroubleToggle<cr>", "List of troubles from LSP"},
                m = {"<cmd>Mason<cr>", "Mason Dashboard"},
                n = {"<cmd>NullLsInfo<cr>", "Null Info Dashboard"},
                l = {"<cmd>LspInfo<cr>", "Lsp Info Dashboard"},
            }
        }, {prefix="<leader>"})

        -- telescope & gits
        wk.register({
            s = {
                name = "Search",
                f = {"<cmd>Telescope find_files<cr>", "Search for File for current working workspace"},
                s = {"<cmd>Telescope live_grep<cr>", "Search for a string in your current working directory"},
                h = {"<cmd>Telescope help_tags<cr>", "Returns List of relevant help tags for your"},
                g = {"<cmd>Telescope git_files<cr>", "List Git files respecting .gitignore"},
            },
            g = {
                name = "Git",
                c = {"<cmd>Telescope git_commits<cr>", "List of Git commits"},
                p = {":Gitsigns preview_hunk<cr>", "Shows you the changes on yellow bar"}
            },
        }, {prefix="<leader>",silent=false, noremap=false})
    end
}
