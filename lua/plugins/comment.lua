return {
  'numtostr/Comment.nvim',
  event = 'BufRead',
  lazy = false,
  config = function()
    require('Comment').setup()
  end,
}
