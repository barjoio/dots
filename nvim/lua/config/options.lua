--
--	Options
--

-- Undo dir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Search
vim.o.hlsearch = false
vim.o.smartcase = true
vim.o.ignorecase = true

-- Split
vim.o.splitright = true

-- List chars
vim.opt.list = true
vim.opt.listchars = { tab = "» ", nbsp = "•" }

-- Tab width
local tabwidth = 2
vim.opt.tabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

