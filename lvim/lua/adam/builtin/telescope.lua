local actions = require("telescope.actions")

vim.cmd.autocmd("User", "TelescopePreviewerLoaded", "setlocal", "number")

B.telescope.theme = "center"
B.telescope.defaults.prompt_prefix = " 󰭎  "
B.telescope.defaults.selection_caret = " "
B.telescope.defaults.layout_config = { horizontal = { width = 0.9, height = 0.9 } }
B.telescope.pickers.buffers.initial_mode = "insert"

B.telescope.defaults.mappings = {
  i = {
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-j>"] = actions.move_selection_next,
    ["<C-y>"] = actions.preview_scrolling_up,
    ["<C-e>"] = actions.preview_scrolling_down,
    ["<M-k>"] = actions.cycle_history_prev,
    ["<M-j>"] = actions.cycle_history_next,
    ["<C-space>"] = actions.toggle_selection,
    ["<M-q>"] = actions.smart_send_to_qflist,
  },
}
