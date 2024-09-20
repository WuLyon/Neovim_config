-- 配置 pylsp 作为 Python 的 LSP
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pylint = { enabled = true },        -- 启用 pylint
        pyflakes = { enabled = true },      -- 启用 pyflakes
        pycodestyle = { enabled = true },   -- 启用 pycodestyle
        autopep8 = { enabled = true },      -- 启用自动格式化
        yapf = { enabled = false },         -- 不使用 yapf 格式化
        pyls_mypy = { enabled = true },     -- 启用 mypy 类型检查
        pyls_isort = { enabled = true },    -- 启用 isort 导入排序
      },
    },
  },
}
