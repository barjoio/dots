--
--	Options
--

-- Undo dir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- List chars
vim.opt.list = true
vim.opt.listchars = { tab = "» ", nbsp = "•" }

-- Tab width
local tabwidth = 2
vim.opt.tabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

-- Share yank/paste with system clipboard
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

-- Splits
vim.opt.splitright = true

-- Integrated terminal
if vim.fn.has("win32") then
  vim.opt.shell = "bash.exe"
end
