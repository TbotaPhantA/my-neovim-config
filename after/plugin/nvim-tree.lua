-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- remaps
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)
  vim.keymap.set('n', '<A-;>', vim.cmd.NvimTreeFocus)
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<A-n>', api.fs.create, opts('Create File Or Directory'))
  vim.keymap.set('n', '<Del>', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', '<A-r>', api.fs.rename, opts('Rename'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  on_attach = my_on_attach,
  view = {
    width = 50,
  },
}

