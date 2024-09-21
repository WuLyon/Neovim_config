-- dap-config.lua

local dap = require("dap")
local dapui = require("dapui")
-- 设置 Python 的调试适配器
require('dap-python').setup('/usr/bin/python3') -- 使用你安装的 debugpy 路径

-- 配置 nvim-dap-ui
dapui.setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    expand = { "<CR>", "o" },
    open = "O",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.25 },  -- 变量信息
        { id = "breakpoints", size = 0.25 },  -- 断点
        { id = "stacks", size = 0.25 },  -- 堆栈
        { id = "watches", size = 0.25 },  -- 监视
      },
      size = 40,  -- 窗口宽度
      position = "left",  -- 左侧显示
    },
    {
      elements = {
        "repl",  -- REPL 窗口
        "console",  -- 控制台
      },
      size = 10,  -- 窗口高度
      position = "bottom",  -- 底部显示
    },
  },
  floating = {
    max_height = nil,
    max_width = nil,
    border = "single",  -- 边框样式
    mappings = {
      close = { "q", "<Esc>" },  -- 关闭浮动窗口快捷键
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil,
  }
})

-- 事件监听，调试启动时自动打开 dap-ui，结束时自动关闭
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
 
end
dap.listeners.before.event_exited["dapui_config"] = function()

end

-- 可以设置断点、继续、单步调试的快捷键
vim.fn.sign_define('DapBreakpoint', {text='🐞', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🛑', texthl='', linehl='', numhl=''})

-- 配置快捷键
vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>lua require\'dap\'.continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', '<Cmd>lua require\'dap\'.step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F9>', '<Cmd>lua require\'dap\'.step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F8>', '<Cmd>lua require\'dap\'.step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', '<Cmd>lua require\'dap\'.close()<CR>', { noremap = true, silent = true })

-- 断点操作的快捷键
vim.api.nvim_set_keymap('n', '<Leader>b', '<Cmd>lua require\'dap\'.toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>B', '<Cmd>lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', { noremap = true, silent = true })

-- dap-ui 快捷键 (可选)
vim.api.nvim_set_keymap('n', '<Leader>du', '<Cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true }) -- 打开/关闭调试界面


vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
