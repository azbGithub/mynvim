-- nvim v0.8.0
return {
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
    keys = {
      {
        "<leader>gg",
        "<cmd>LazyGit<cr>",
        desc = "lazygit",
      },
    },
  },
}
