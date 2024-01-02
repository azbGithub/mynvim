return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    dependencies = { "p00f/nvim-ts-rainbow" },
    build = ":TSUpdate",
    config = function()
      local config = require "nvim-treesitter.configs"
      config.setup {
        ensure_installed = { "lua", "cpp", "python" },
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
          colors = {
            "#95ca60",
            "#ee6985",
            "#D6A760",
            "#7794f4",
            "#b38bf5",
            "#7cc7fe",
          },
        },
      }
    end,
  },
}
