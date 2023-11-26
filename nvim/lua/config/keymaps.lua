local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    j = { "<cmd>%!jq -r tostring -<cr>", "Minify JSON" },
    t = { "<cmd>set relativenumber!<cr>", "Toggle relative number" },
  },
})
