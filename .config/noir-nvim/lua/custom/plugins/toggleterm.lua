return {

  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      -- Your setup configurations here
      open_mapping = '<C-\\>',
      direction = 'float',
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    }
  end,
  keys = {
    { '<C-\\>', '<cmd>ToggleTerm<CR>', desc = 'Toggle floating terminal' },
  },
}
