local telescope = require("telescope")
local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      telescope.load_extension("fzf")
    end,
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-d>"] = actions.delete_buffer,
          ["<Down>"] = actions.preview_scrolling_down,
          ["<Up>"] = actions.preview_scrolling_up,
          ["<Left>"] = actions.preview_scrolling_left,
          ["<Right>"] = actions.preview_scrolling_right,
        },
      },
    },
    pickers = {
      lsp_references = {
        show_line = false,
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            preview_cutoff = 0,
          },
        },
      },
    },
  },
}
