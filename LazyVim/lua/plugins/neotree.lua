local function neo_tree_close()
  require("neo-tree.command").execute({ action = "close" })
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = neo_tree_close,
      },
    },
    window = {
      mappings = {
        ["/"] = false,
        ["?"] = false,
        ["h"] = "show_help",
        ["s"] = false,
        ["v"] = "open_vsplit",
      },
    },
    buffers = {
      window = {
        mappings = {
          ["<leader>be"] = { neo_tree_close, desc = "close" },
        },
      },
    },
  },
}
