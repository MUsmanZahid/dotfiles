local opts = { noremap = true, silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

-- Remap `,` as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Buffer, Tab, and Window Navigation
map("n", "<A-,>", ":bprevious<CR>", opts)
map("n", "<A-.>", ":bnext<CR>", opts)

map("n", "<A-[>", ":tabprevious<CR>", opts)
map("n", "<A-]>", ":tabnext<CR>", opts)

-- Move to different windows
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-j>", "<C-w>j", opts)
map("n", "<A-k>", "<C-w>k", opts)
map("n", "<A-l>", "<C-w>l", opts)

-- Move windows
map("n", "<A-H>", "<C-w>H", opts)
map("n", "<A-J>", "<C-w>J", opts)
map("n", "<A-K>", "<C-w>K", opts)
map("n", "<A-L>", "<C-w>L", opts)

-- Leader mapping
map("n", "<leader>t", ":tabedit<CR>", opts)
map("n", "<leader>q", ":quit<CR>", opts)
map("n", "<leader>w", ":write<CR>", opts)

map("n", "<leader>\\", ":vsplit<CR>", opts)
map("n", "<leader>-", ":split<CR>", opts)

-- Telescope
map("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", opts)
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", opts)
map("n", "<leader>fS", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", opts)

-- Zen mode
map("n", "<leader>z", "<cmd>ZenMode<CR>", opts)
