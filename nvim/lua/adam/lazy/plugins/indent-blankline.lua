return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
  config = function()
    require("indent_blankline").setup({
      show_current_context = true,
    })
  end,
}
