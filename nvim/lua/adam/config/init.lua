--
--  Config
--

vim.cmd.colorscheme("rose-pine-moon")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.fillchars:append({ vert = " " })
vim.opt.splitright = true

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

local tabwidth = 2
vim.opt.tabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

vim.opt.cursorline = true
vim.opt.cursorlineopt = { "number" }

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.list = true
vim.opt.listchars = { tab = "» ", nbsp = "•" }

vim.cmd.highlight("IndentBlanklineContextChar", "guifg=#8694c2", "gui=nocombine")
vim.cmd.highlight("FloatBorder", "guifg=#8694c2", "gui=nocombine")

vim.opt.signcolumn = "yes"
