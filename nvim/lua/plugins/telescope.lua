return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
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
    })
  end,
}
