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
          ["<C-s>"] = actions.select_vertical,
          ["<C-d>"] = actions.delete_buffer,
          ["<C-e>"] = actions.preview_scrolling_up,
          ["<C-y>"] = actions.preview_scrolling_down,
        },
      },
    },
  },
}
