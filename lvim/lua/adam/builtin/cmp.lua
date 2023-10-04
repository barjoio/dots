local cmp = require("cmp")

B.cmp.mapping = {
  ["<C-k>"] = cmp.mapping.select_prev_item(),
  ["<C-j>"] = cmp.mapping.select_next_item(),
  ["<C-y>"] = cmp.mapping.scroll_docs(-4),
  ["<C-e>"] = cmp.mapping.scroll_docs(4),
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<C-f>"] = cmp.mapping.abort(),
  ["<Tab>"] = cmp.mapping.confirm({ select = true }),
}
