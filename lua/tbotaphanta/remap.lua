vim.keymap.set("n", "<A-;>", vim.cmd.Ex)

-- delete word using Ctrl+backspace
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-S-W>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-H>', '<C-S-W>', { noremap = true })
