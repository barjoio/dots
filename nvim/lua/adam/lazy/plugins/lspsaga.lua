return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      breadcrumbs = {
        show_file = false,
        enable = false,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
