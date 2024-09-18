-- Command
-- :nohlsearch
-- :source %
-- :split
-- :vsplit
-- :PackerSync
-- :PackerClean
-- :PackerStatus
-- :TSUpdate <python> ...
-- :TSInstallInfo
-- :checkhealth nvim-treesitter
-- :map <shortcut>


-- colorscheme
vim.cmd('colorscheme onedark')

-- Line Numbers setting
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation setting
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

-- Search setting
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- User Interface Setting
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Clipboard and Mouse Setting
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

-- File Management
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.swapfile = false

-- Splits and Windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Keymap Settings
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })

-- Performance Settings
vim.opt.updatetime = 300
vim.opt.timeoutlen = 1000

-- Packer setup
vim.cmd [[packadd packer.nvim]]

local noice_setup = require('noice_setup')
local treesitter_setup = require('treesitter_setup')
require('packer').startup(function(use)
  -- Packer可以管理自身
  use 'wbthomason/packer.nvim'

  -- colcorscheme
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  
  -- 添加nvim-treesitter插件
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = treesitter_setup.setup
  }
  use {
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = noice_setup.setup
  }

  -- 其他插件...
end)
