return {
  "stevearc/dressing.nvim",
  config = function()
    local dressing = require("dressing")
    dressing.setup({
      input = {
        win_options = {
          winblend = 0,
        },
      },
    })
  end,
}
