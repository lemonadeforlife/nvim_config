return {
  "akinsho/bufferline.nvim",
  branch = "main",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
        separator_style = "thick",
        hover = {
          enabled = true,
        },
        indicator = {
          style = "underline",
        },
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
      },
    })
  end,
}
