return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.WARN,
      filetype = {
        lua = {
          {
            exe = "stylua",
            args = { "--indent-type=Spaces", "--indent-width=2" },
          },
        },
        ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
      },
    })
  end,
}
