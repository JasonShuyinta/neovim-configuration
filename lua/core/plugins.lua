local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  --Package Manager
  use 'wbthomason/packer.nvim'
  --Themese 
  use 'ellisonleao/gruvbox.nvim'
  use 'marko-cerovac/material.nvim' 
  use 'shaunsingh/nord.nvim'
  use 'rmehri01/onenord.nvim'
  --File Explorer
  use 'nvim-tree/nvim-tree.lua'
  --Icons
  use 'nvim-tree/nvim-web-devicons'
  --LuaLine
  use 'nvim-lualine/lualine.nvim'
  --Buffers
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  --Brackets autoclose
  use 'm4xshen/autoclose.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  --completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  --snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  --lsp
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }
  --Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }
  --Indentation
  use 'lukas-reineke/indent-blankline.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
