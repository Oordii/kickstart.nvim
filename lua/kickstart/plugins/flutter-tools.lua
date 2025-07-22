return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional UI
  },
  config = function()
    require('flutter-tools').setup {
      dev_log = { enabled = true },
      widget_guides = { enabled = true },
      closing_tags = {
        highlight = 'Comment',
        prefix = '//',
        enabled = true,
      },
    }
  end,
  keys = {
    { '<leader>Fr', ':FlutterReload <CR>', desc = '[F]lutter hot [r]eload', silent = true },
    { '<leader>Fs', ':FlutterRestart <CR>', desc = '[F]lutter hot Re[s]tart', silent = true },
    { '<leader>Fd', ':FlutterDevices <CR>', desc = '[F]lutter [d]evices', silent = true },
    { '<leader>Ft', ':FlutterOpenDevTools <CR>', desc = '[F]lutter dev [t]ools', silent = true },
    { '<leader>Fl', ':FlutterLogToggle <CR>', desc = '[F]lutter Toggle [l]ogs', silent = true },
    { '<leader>Fp', ':FlutterPubGet <CR>', desc = '[F]lutter [p]ub get', silent = true },
    { '<leader>Fq', ':FlutterQuit <CR>', desc = '[F]lutter [q]uit', silent = true },
  },
  ft = { 'dart' },
  lsp = {
    color = {
      enabled = false,
      background = false,
      background_color = nil,
      foreground = false,
      virtual_text = true,
      virtual_text_str = '■',
    },
  },
}
