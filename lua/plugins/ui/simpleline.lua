return {
  "Kicamon/SimpleLine.nvim",
  enabled = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("statusline").setup()
    require("tabline").setup()
  end,
}
