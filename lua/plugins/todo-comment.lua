return {
  'folke/todo-comments.nvim',
  event = 'BufRead',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('todo-comments').setup()
  end,
  keys = {
    { '<leader>ft', ':TodoTelescope<CR>', desc = 'todo list', silent = true, noremap = true },
    {
      ']t',
      function()
        require('todo-comments').jump_next()
      end,
      desc = 'Next todo comment',
    },
    {
      '[t',
      function()
        require('todo-comments').jump_prev()
      end,
      desc = 'Previous todo comment',
    },
  },
}
