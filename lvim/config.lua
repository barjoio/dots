require("adam")

lvim.colorscheme = "catppuccin"
lvim.format_on_save = false
lvim.transparent_window = true

-- lvim.colorscheme = "vscode"
-- lvim.builtin.lualine.options.theme = "vscode"
-- lvim.transparent_window = false

vim.cmd([[ autocmd! ColorScheme * highlight NormalFloat guibg=_ ]])
