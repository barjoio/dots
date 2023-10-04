-- Toggle relative numbers
lvim.keys.normal_mode["<F11>"] = ":set relativenumber!<CR><C-l>"

-- New buffer
lvim.builtin.which_key.mappings["n"] = { ":enew<CR>", "New buffer" }

-- Minify JSON
lvim.builtin.which_key.mappings["m"] = { ":%!jq -r tostring -<CR>", "Minify JSON" }

-- Open alternative buffer in split (re-open previously closed buffer)
lvim.builtin.which_key.mappings["t"] = { ":vs#<CR>", "Open alternative buffer" }

-- Find
lvim.builtin.which_key.mappings["f"] = { ":Telescope git_files<CR>", "Find files" }

-- Search
lvim.builtin.which_key.mappings["s"].a = { ":Telescope find_files no_ignore=true<CR>", "Find all" }
lvim.builtin.which_key.mappings["s"].b = { ":Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings["s"].f = { ":Telescope filetypes<CR>", "Filetypes" }
lvim.builtin.which_key.mappings["s"].f = { ":Telescope planets<CR>", "Planets" }
lvim.builtin.which_key.mappings["s"].s = { ":Telescope grep_string<CR>", "Grep string" }

-- Glow
lvim.builtin.which_key.mappings["P"] = { ":Glow<CR>", "Glow" }

-- LSP
lvim.builtin.which_key.mappings["l"].d = { ":TroubleToggle<CR>", "Diagnostics" }
lvim.lsp.buffer_mappings.normal_mode["gd"] = { ":Telescope lsp_definitions<CR>", "Definitions" }
lvim.lsp.buffer_mappings.normal_mode["gr"] = { ":Telescope lsp_references<CR>", "References" }

-- Zen mode
lvim.builtin.which_key.mappings["z"] = { ":ZenMode<CR>", "Zen mode" }
