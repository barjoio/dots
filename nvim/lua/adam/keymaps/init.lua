--
--  Keybinds
--

-- Leader
vim.g.mapleader = " "

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>yy", '"+yy')
vim.keymap.set("n", "<leader>Y", '"+yg_')
vim.keymap.set("n", "<leader>p", '"+P')

-- Toggle relative numbers
vim.keymap.set("n", "<F11>", ":set relativenumber!<CR><C-l>")

-- Navigate windows
vim.keymap.set("n", "<M-h>", "<C-w><C-h>")
vim.keymap.set("n", "<M-j>", "<C-w><C-j>")
vim.keymap.set("n", "<M-k>", "<C-w><C-k>")
vim.keymap.set("n", "<M-l>", "<C-w><C-l>")

-- Resize windows
vim.keymap.set("n", "<lt>", ":vertical resize -5<CR><C-l>")
vim.keymap.set("n", ">", ":vertical resize +5<CR><C-l>")

-- Format using plugin
vim.keymap.set("n", "<leader>i", ":Format<CR><C-l>")

-- Move selection in Visual mode
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

-- Nvim-Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFindFileToggle)

-- Telescope
vim.keymap.set("n", "<leader>fp", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fa", ":Telescope find_files no_ignore=true<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>ft", ":Telescope grep_string<CR>")
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>")
vim.keymap.set("n", "<leader>gf", ":Telescope git_bcommits<CR>")
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>")
vim.keymap.set("n", "<leader>gt", ":Telescope git_stash<CR>")

-- Trouble
vim.keymap.set("n", "<leader>t", ":TroubleToggle<CR><C-l>")

