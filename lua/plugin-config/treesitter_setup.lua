require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true,  -- 启用语法高亮
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "vv",
      node_incremental = "nn",
      scope_incremental = "nc",
      node_decremental = "mm",
    },
  },
}
