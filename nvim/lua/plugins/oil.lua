return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      keymaps = {
        ["<C-l>"] = false,
        ["<C-h>"] = false,
        ["<leader>r"] = "actions.refresh",
        ["<leader>v"] = "actions.select_vsplit",
      },
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
