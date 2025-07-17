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
  ft = { 'dart' }, -- lazy load only for Dart files
}
