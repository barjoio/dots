local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
  {
    name = "prettierd",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "css",
      "scss",
      "less",
      "html",
      "json",
      "jsonc",
      "yaml",
      "markdown",
      "markdown.mdx",
      "graphql",
      "handlebars",
    },
  },
  {
    name = "stylua",
    args = { "--indent-type", "spaces", "--indent-width", "2" },
    filetypes = { "lua", "luau" },
  },
})
