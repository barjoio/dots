B.nvimtree.setup.actions.open_file.quit_on_open = true
B.nvimtree.setup.on_attach = function(bufnr)
  require("nvim-tree.api").config.mappings.default_on_attach(bufnr)
  vim.keymap.set("n", "<C-e>", "<C-e>", { buffer = bufnr, noremap = true, silent = true, nowait = true })
end
B.nvimtree.setup.view.width = 40
B.nvimtree.setup.view.centralize_selection = true
B.nvimtree.setup.renderer.indent_markers.enable = true
B.nvimtree.setup.renderer.icons.git_placement = "after"
B.nvimtree.setup.renderer.icons.glyphs.git = {
  unstaged = "",
  staged = "󰓎",
  unmerged = "",
  renamed = "󰏫",
  untracked = "󰜄",
  deleted = "󰅘",
  ignored = "",
}
