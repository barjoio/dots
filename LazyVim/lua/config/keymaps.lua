local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    b = { "<cmd>Neotree buffers<cr>", "Buffer explorer" },
    m = { "<cmd>%!jq -r tostring -<cr>", "Minify JSON" },
    n = { "<cmd>set relativenumber!<cr>", "Toggle relative number" },
    o = { "<cmd>%bd|e#<cr>", "Close all but current buffer" },
  },
})
