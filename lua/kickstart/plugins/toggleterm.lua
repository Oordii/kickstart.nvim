return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,
  keys = {
    { '<leader>tt', ':ToggleTerm size=40 direction=horizontal name=desktop <CR>', desc = '[t]oggle [t]erminal', silent = true },
  },
}
