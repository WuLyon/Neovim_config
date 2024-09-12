-- Command
-- :nohlsearch
-- :source %
-- :split
-- :vsplit

-- Line Numbers setting
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation setting
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
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
vim.opt.timeoutlen = 500

