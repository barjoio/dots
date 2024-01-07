return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "VeryLazy" },
  init = function(plugin)
    require("lazy.core.loader").add_to_rtp(plugin)
    require("nvim-treesitter.query_predicates")
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "comment",
      "css",
      "csv",
      "diff",
      "dockerfile",
      "git_config",
      "gitignore",
      "go",
      "gomod",
      "gosum",
      "html",
      "ini",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "make",
      "markdown",
      "markdown_inline",
      "prisma",
      "python",
      "query",
      "regex",
      "sql",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["as"] = { query = "@scope", query_group = "locals" },
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]f"] = "@function.outer",
        },
        goto_next_end = {
          ["]F"] = "@function.outer",
        },
        goto_previous_start = {
          ["[f"] = "@function.outer",
        },
        goto_previous_end = {
          ["[F"] = "@function.outer",
        },
      },
    },
  },
  config = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      local added = {}
      opts.ensure_installed = vim.tbl_filter(function(lang)
        if added[lang] then
          return false
        end
        added[lang] = true
        return true
      end, opts.ensure_installed)
    end
    require("nvim-treesitter.configs").setup(opts)

    local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
  end,
}
