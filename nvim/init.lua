--
--	Netrw
--

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0

--
--	Options
--

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

--
--	Keymaps
--

-- Leader
vim.g.mapleader = ' '

-- Netrw
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore<cr>', { noremap = true, silent = true })

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

