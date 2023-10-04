return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noinsert,noselect",
      },
      mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-y>"] = cmp.mapping.scroll_docs(-4),
        ["<C-e>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-f>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      },
      window = {
        completion = cmp.config.window.bordered({
          winhighlight = "FloatBorder:FloatBorder",
        }),
        documentation = cmp.config.window.bordered({
          winhighlight = "FloatBorder:FloatBorder",
        }),
      },
      sources = cmp.config.sources({
        { name = "buffer" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
      }),
    })
  end,
}
