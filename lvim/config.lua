require("adam")

lvim.colorscheme = "catppuccin"
lvim.format_on_save = false
lvim.transparent_window = true

-- lvim.colorscheme = "vscode"
-- lvim.builtin.lualine.options.theme = "vscode"

vim.cmd([[ autocmd! ColorScheme * highlight NormalFloat guibg=_ ]])
