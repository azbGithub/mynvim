return {
  "neanias/everforest-nvim",
  enabled = false,
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("everforest").setup {}
    vim.cmd "colorscheme everforest"
  end,
}
