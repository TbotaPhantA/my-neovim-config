local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- INSERT
-- delete word using Ctrl+backspace
keymap('i', '<C-BS>', '<C-S-W>', { noremap = true })
keymap('i', '<C-H>', '<C-S-W>', { noremap = true })

-- NORMAL
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better buffer navigation
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)
keymap("n", "<A-w>", ":Bdelete<CR>", opts)
