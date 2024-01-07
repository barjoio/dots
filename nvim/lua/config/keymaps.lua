-- Set keymap helper
local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Window resize
map("n", "<C-Up>", "<cmd>resize -2<cr>")
map("n", "<C-Down>", "<cmd>resize +2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

-- Navigate buffers
map("n", "<S-l>", "<cmd>bnext<cr>")
map("n", "<S-h>", "<cmd>bprevious<cr>")

-- Close tab
map("n", "<leader><Tab>d", "<cmd>tabc<cr>")

-- Keep selection while indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Exit terminal mode
map("t", "<Esc>", "<C-\\><C-n>")

-- oil.nvim
map("n", "-", "<cmd>Oil<cr>")

-- telescope.nvim
map("n", "<leader>sf", "<cmd>Telescope filetypes<cr>")
map("n", "<leader>sh", "<cmd>Telescope command_history<cr>")
map("n", "<leader>sj", "<cmd>Telescope jumplist<cr>")
map("n", "<leader>sm", "<cmd>Telescope marks<cr>")
map("n", "<leader>so", "<cmd>Telescope vim_options<cr>")
map("n", "<leader>sr", "<cmd>Telescope resume<cr>")
map("n", "<leader>ss", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>st", "<cmd>Telescope grep_string<cr>")
--
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>")
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
--
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")
map("n", "<leader>gc", "<cmd>Telescope git_bcommits<cr>")
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>")
map("n", "<leader>gt", "<cmd>Telescope git_stash<cr>")

-- Diffview.nvim
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>")
map("n", "<leader>gr", "<cmd>DiffviewRefresh<cr>")
