-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' }
    }
  }

  -- colors
  use ({
    'xiantang/darcula-dark.nvim',
    requires = {"nvim-treesitter/nvim-treesitter"}
  })


  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('mbbill/undotree')
  use ({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  })
  use ({
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = {
      { 'nvim-tree/nvim-web-devicons' },
      { 'moll/vim-bbye' },
    },
  })
  use ({ "akinsho/toggleterm.nvim", tag = '*' })
  use({ "Pocco81/auto-save.nvim" })
  use({ "tzachar/local-highlight.nvim" })
end)
