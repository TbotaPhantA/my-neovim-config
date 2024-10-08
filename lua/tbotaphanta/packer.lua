-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use ({
    'folke/todo-comments.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' }
    }
  }

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
  use ({ "Pocco81/auto-save.nvim" })
  use ({ "tzachar/local-highlight.nvim" })
  use ({ 'stevearc/dressing.nvim' })
  use ({
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  })
  local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
  }

  use ({
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
      require("ibl").setup({
        indent = { highlight = highlight, char = "┊" },
        whitespace = {
          highlight = highlight,
          remove_blankline_trail = false,
        },
        scope = { enabled = false },
      })
    end
  })

  --nvim-cmp
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}

  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'rafamadriz/friendly-snippets'}
  -- nvim-lspconfig
  use ({
    'neovim/nvim-lspconfig',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      {
        "antosha417/nvim-lsp-file-operations",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-tree.lua",
        },
        config = function()
          require("lsp-file-operations").setup()
        end,
      }
    }
  })
  -- mason
  use ({
    'williamboman/mason.nvim',
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    }
  })
end)
