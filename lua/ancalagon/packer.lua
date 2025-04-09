-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  "rose-pine/neovim", 
	  as = "rose-pine", 
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end

  })

  use({
	  "neg-serg/neg.nvim",
	  as = "neg-serg",

  })

  use {'nyoom-engineering/oxocarbon.nvim'}

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!

  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use 'mbbill/undotree'

  use('tpope/vim-fugitive')

  use({
      'morhetz/gruvbox',
      config = function()
          vim.cmd.colorscheme ('gruvbox')
      end
  })
  
  use({
      'EdenEast/nightfox.nvim',
      config = function()
          vim.cmd.colorscheme ('nightfox')
      end
  })


  use({
      'savq/melange-nvim',
      config = function()
          vim.cmd.colorscheme ('melange')
      end
  })


  use("eandrju/cellular-automaton.nvim")


  use('thedenisnikulin/vim-cyberpunk')



end)


