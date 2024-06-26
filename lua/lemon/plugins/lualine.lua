return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        component_separators = "",
        section_separators = { left = "", right = "" },
        disabled_filetypes = { statusline = { 'NvimTree' } }
      },
      globalstatus = true,
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
        lualine_b = { "branch" },
        lualine_c = { require("auto-session.lib").current_session_name },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "mode" },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
