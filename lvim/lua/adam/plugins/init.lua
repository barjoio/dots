lvim.plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      no_underline = true,
      integrations = {
        lsp_saga = true,
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    opts = {
      input = {
        win_options = {
          winblend = 0,
        },
      },
    },
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = function()
      require("glow").setup({
        border = "rounded",
        style = "~/.config/glow/mocha.json",
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        ui = {
          kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
        },
        symbol_in_winbar = {
          enable = true,
          hide_keyword = true,
          folder_level = 0,
        },
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_float_background = true,
      })
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "folke/zen-mode.nvim",
  },
}
