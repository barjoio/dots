return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>fb", "<cmd>echo 'hello'<cr>", "Say hello" },
  },
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
    filesystem = {
      window = {
        mappings = {
          ["/"] = false,
          ["?"] = false,
        },
      },
    },
  },
}
