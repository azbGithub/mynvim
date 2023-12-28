return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  keys = {
    {
      '<leader>un',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss all Notifications',
    },
  },
  opts = {
    background_colour = '#000000',
    stages = 'fade_in_slide_out',
    timeout = 1000,
    on_open = nil,
    on_close = nil,
    render = 'default',
    max_width = nil,
    max_height = nil,
    minimum_width = 25,
    icons = {
      ERROR = '',
      WARN = '',
      INFO = '',
      DEBUG = '',
      TRACE = '✎',
    },
  },
}
