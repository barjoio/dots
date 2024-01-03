local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    m = { "<cmd>%!jq -r tostring -<cr>", "Minify JSON" },
    n = { "<cmd>set relativenumber!<cr>", "Toggle relative number" },
    ["gd"] = { "<cmd>DiffviewOpen<cr>", "Open git diff editor" },
    ["gt"] = { "<cmd>DiffviewToggleFiles<cr>", "Toggle files in diff editor" },
  },
})
