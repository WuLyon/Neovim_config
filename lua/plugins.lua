vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer可以管理自身
  use 'wbthomason/packer.nvim'

  -- colcorscheme
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'nvim-tree/nvim-web-devicons'
  
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('plugin-config.nvim-tree_setup')
    end
  }
  -- 添加nvim-treesitter插件
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugin-config.treesitter_setup')
    end
  }
  
  -- 添加noice.nvim插件
  use {
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require('plugin-config.noice_setup')
    end
  }
  
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require('plugin-config.nvim-cmp_setup')
    end
  }

  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require('plugin-config.toggleterm_setup')
    end
  }
  
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup{}
    end
  }

  -- 其他插件...
end)
