return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      --dim_nc_background = true,
    })
  end,
}
