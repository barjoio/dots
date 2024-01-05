vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false

vim.opt.cursorlineopt = { "number" }

if vim.fn.has("win32") then
  vim.opt.shell = "bash.exe"
end
