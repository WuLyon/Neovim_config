require('toggleterm').setup{
  direction = 'horizontal', 
  -- horizontal vertical tab float
  open_mapping = [[tt]],
  start_in_insert = true,
  shade_terminals = true,
}

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
