return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
  event = "VeryLazy",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        {
          "hrsh7th/cmp-nvim-lsp",
        },
      },
    },
  },
  config = function()
    local lsp_zero = require("lsp-zero")
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    require("lspconfig.ui.windows").default_options.border = "rounded"

    lsp_zero.on_attach(function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
      vim.keymap.set("n", "<F3>", vim.lsp.buf.format)
      vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action)
      vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR><C-l>")
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
      vim.keymap.set("n", "gi", ":Telescope lsp_implementations<CR><C-l>")
      vim.keymap.set("n", "go", vim.lsp.buf.type_definition)
      vim.keymap.set("n", "gr", ":Telescope lsp_references<CR><C-l>")
      vim.keymap.set("n", "gs", vim.lsp.buf.signature_help)
      vim.keymap.set("n", "gS", ":Telescope lsp_document_symbols<CR><C-l>")
      vim.keymap.set("n", "gt", ":Telescope lsp_type_definitions<CR><C-l>")
      vim.keymap.set("n", "gci", ":Telescope lsp_incoming_calls<CR><C-l>")
      vim.keymap.set("n", "gco", ":Telescope lsp_outgoing_calls<CR><C-l>")
      vim.keymap.set("n", "gl", vim.diagnostic.open_float)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    end)

    mason.setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "gopls",
        "lua_ls",
        "tsserver",
        "rust_analyzer",
      },
      automatic_installation = true,
      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      },
    })
  end,
}
