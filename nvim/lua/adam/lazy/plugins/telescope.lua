return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    vim.cmd.autocmd("User", "TelescopePreviewerLoaded", "setlocal", "number")

    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = {
            width = 0.9,
            height = 0.9,
          },
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-y>"] = actions.preview_scrolling_up,
            ["<C-e>"] = actions.preview_scrolling_down,
            ["<M-k>"] = actions.cycle_history_prev,
            ["<M-j>"] = actions.cycle_history_next,
          },
        },
      },
    })
    telescope.load_extension("fzf")
  end,
}
