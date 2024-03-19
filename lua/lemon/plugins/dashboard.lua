return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("dashboard").setup {
            theme = 'hyper',
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                    {
                      icon = ' ',
                      icon_hl = '@variable',
                      desc = 'Files',
                      group = 'Label',
                      action = 'Telescope find_files',
                      key = 'f',
                    },
                    {
                      desc = ' Code',
                      group = 'DiagnosticHint',
                      action = 'NvimTreeOpen ~/Code/',
                      key = 'c',
                    },
                    {
                      desc = ' dotfiles',
                      action = 'Telescope find_files cwd=~/.config/nvim/',
                      key = 'd',
                    },
                    {
                        desc = '󰅜 Exit',
                        group = 'Number',
                        action = ':q',
                        key = 'q',
                    }
                },
            }
        }
    end
}
