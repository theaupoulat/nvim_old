vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/nvim-treesitter-context')
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('stevearc/overseer.nvim')
  use("folke/which-key.nvim")
  use("max397574/better-escape.nvim")
  use("nvim-tree/nvim-web-devicons")
  use('nvim-lualine/lualine.nvim')
  use('folke/trouble.nvim')
  use('folke/neodev.nvim')
  use('folke/todo-comments.nvim')

  use('ckolkey/ts-node-action')
  use('nvim-tree/nvim-tree.lua')
  use('AckslD/nvim-neoclip.lua')


  use({
      "utilyre/barbecue.nvim",
      tag = "*",
      requires = {
          "SmiteshP/nvim-navic",
          "nvim-tree/nvim-web-devicons",
      },
      after = "nvim-web-devicons",
      config = function()
          require("barbecue").setup()
      end,
  })


  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          {'neovim/nvim-lspconfig'},
          {
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end},
          {'williamboman/mason-lspconfig.nvim'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }





end)
