-- relative line number
vim.opt.relativenumber = true
vim.opt.nu = true

-- tab settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- I don't want nvim to do any backups
vim.opt.swapfile = false
vim.opt.backup = false

-- search highlighting options
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scrolloff
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- general
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"
vim.g.mapleader = " "
