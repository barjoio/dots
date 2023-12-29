local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    j = { "<cmd>Telescope jumplist<cr>", "Jumplist" },
    m = { "<cmd>%!jq -r tostring -<cr>", "Minify JSON" },
    n = { "<cmd>set relativenumber!<cr>", "Toggle relative number" },
  },
})
