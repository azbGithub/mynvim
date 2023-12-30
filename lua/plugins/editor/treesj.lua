-- TODO: Setting up language configuration cpp, python, rust ....
return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup {
      vim.keymap.set("n", "<leader>j", require("treesj").toggle),
      vim.keymap.set("n", "<leader>J", function()
        require("treesj").toggle { split = { recursive = true } }
      end),
    }
  end,
}
