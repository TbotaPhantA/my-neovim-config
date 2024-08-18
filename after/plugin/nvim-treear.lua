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
  vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle, opts('Toggle'))
  vim.keymap.set('n', '<A-;>', vim.cmd.NvimTreeFocus, opts('Focus'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  on_attach = my_on_attach,
  view = {
    width = 50,
  },
}

