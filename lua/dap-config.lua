-- dap-config.lua

local dap = require('dap')

-- 设置 Python 的调试适配器
require('dap-python').setup('/usr/bin/python3') -- 使用你安装的 debugpy 路径

-- 可以设置断点、继续、单步调试的快捷键
vim.fn.sign_define('DapBreakpoint', {text='🐞', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🛑', texthl='', linehl='', numhl=''})

-- 配置快捷键
vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>lua require\'dap\'.continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', '<Cmd>lua require\'dap\'.step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F9>', '<Cmd>lua require\'dap\'.step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-F9>', '<Cmd>lua require\'dap\'.step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', '<Cmd>lua require\'dap\'.close()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', '<Cmd>lua require\'dap\'.toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>B', '<Cmd>lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', { noremap = true, silent = true })

