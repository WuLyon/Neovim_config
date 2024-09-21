require('toggleterm').setup{
  direction = 'horizontal', 
  -- horizontal vertical tab float
  size = 15,
  open_mapping = [[<C-t>]],
  start_in_insert = true,
  shade_terminals = true,
  shading_factor = 100,
}

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
