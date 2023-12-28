return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = {
    {
      "<leader>tf",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, vim.loop.cwd(), "float")
      end,
      desc = "ToggleTerm (float)",
    },
    {
      "<leader>tv",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, vim.loop.cwd(), "vertical")
      end,
      desc = "ToggleTerm (vertical)",
    },
    {
      "<leader>th",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 10, vim.loop.cwd(), "horizontal")
      end,
      desc = "ToggleTerm (horizontal)",
    },
  },
}
