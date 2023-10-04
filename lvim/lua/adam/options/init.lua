vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.splitright = true

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.cursorline = true
vim.opt.cursorlineopt = { "number" }

vim.opt.list = true
vim.opt.listchars = { tab = "  ", nbsp = "•" }

vim.opt.signcolumn = "yes"
