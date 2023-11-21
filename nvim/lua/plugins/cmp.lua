local cmp = require("cmp")

return {
  "hrsh7th/nvim-cmp",
  opts = {
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
  },
}
