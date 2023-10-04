local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set("n", "<C-e>", "<C-e>", opts(""))
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      git = {
        show_on_dirs = false,
      },
      on_attach = my_on_attach,
      view = {
        width = 50,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          git_placement = "after",
        },
      },
    })
  end,
}
